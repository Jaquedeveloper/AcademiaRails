# coding: utf-8
require 'spec_helper'

feature 'gerenciar alimentorefeicao' do
	
  scenario 'incluir alimentorefeicao' do #, :javascript => true  do	
    refeicao = FactoryGirl.create(:refeicao, :data => '30/10/2012')
	alimento = FactoryGirl.create(:alimento, :nome => 'Arroz')
    visit new_alimentorefeicao_path
    preencher_e_verificar_alimentorefeicao
  end

  scenario 'alterar alimentorefeicao' do #, :javascript => true  do
   	refeicao = FactoryGirl.create(:refeicao, :data => '30/10/2012')
	alimento = FactoryGirl.create(:alimento, :nome => 'Arroz')
	alimentorefeicao = FactoryGirl.create(:alimentorefeicao, :alimento => alimento, :refeicao => refeicao )
    visit edit_alimentorefeicao_path(alimentorefeicao)
    preencher_e_verificar_alimentorefeicao
  end
	
  scenario 'excluir alimentorefeicao' do #, :javascript => true  do	
    refeicao = FactoryGirl.create(:refeicao, :data => '30/10/2012')
	alimento = FactoryGirl.create(:alimento, :nome => 'Arroz')
	alimentorefeicao = FactoryGirl.create(:alimentorefeicao, :alimento => alimento, :refeicao => refeicao)	
    visit alimentorefeicaos_path	
    click_link 'Excluir'
  end

 def preencher_e_verificar_alimentorefeicao	
    select '30/10/2012', :on => 'refeicao'	
	select 'Arroz', :on => 'alimento'
    click_button 'Salvar'
    page.should have_content 'refeicao: 30/10/2012'
	page.should have_content 'alimento: Arroz'
  end
	
end
