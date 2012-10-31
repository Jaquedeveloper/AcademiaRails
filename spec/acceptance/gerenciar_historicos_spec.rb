# coding: utf-8
require 'spec_helper'

feature 'gerenciar historico' do
	
  scenario 'incluir historico' do #, :javascript => true  do	
    refeicao = FactoryGirl.create(:refeicao, :data => '30/10/2012')
	treino = FactoryGirl.create(:treino, :data => '30/12/2012')
    visit new_historico_path
    preencher_e_verificar_historico
  end

  scenario 'alterar historico' do #, :javascript => true  do
   	refeicao = FactoryGirl.create(:refeicao, :data => '30/10/2012')
	treino = FactoryGirl.create(:treino, :data => '30/12/2012')
	historico = FactoryGirl.create(:historico, :treino => treino, :refeicao => refeicao )
    visit edit_historico_path(historico)
    preencher_e_verificar_historico
  end
	
  scenario 'excluir historico' do #, :javascript => true  do	
    refeicao = FactoryGirl.create(:refeicao, :data => '30/10/2012')
	treino = FactoryGirl.create(:treino, :data => '30/12/2012')
	historico = FactoryGirl.create(:historico, :treino => treino, :refeicao => refeicao )	
    visit historicos_path	
    click_link 'Excluir'
  end

 def preencher_e_verificar_historico	
    select '30/10/2012', :on => 'refeicao'	
	select '30/12/2012', :on => 'treino'
    click_button 'Salvar'
    page.should have_content 'Refeicao: 30/10/2012'
	page.should have_content 'Treino: 30/12/2012'
  end
	
end
