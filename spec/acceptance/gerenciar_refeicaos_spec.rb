# coding: utf-8
require 'spec_helper'

feature 'gerenciar refeicao' do
	
  scenario 'incluir refeicao' do #, :javascript => true  do	
    tipo_refeicao = FactoryGirl.create(:tipo_refeicao, :nome => 'Almoço')
	usuario = FactoryGirl.create(:usuario, :nome => 'Jaqueline')
    visit new_refeicao_path
    preencher_e_verificar_refeicao
  end

  scenario 'alterar refeicao' do #, :javascript => true  do
   	tipo_refeicao = FactoryGirl.create(:tipo_refeicao, :nome => 'Almoço')
	usuario = FactoryGirl.create(:usuario, :nome => 'Jaqueline')
	refeicao = FactoryGirl.create(:refeicao, :Tipo_Refeicao => tipo_refeicao, :Usuario => usuario)
    visit edit_refeicao_path(refeicao)
    preencher_e_verificar_refeicao
  end
	
  scenario 'excluir refeicao' do #, :javascript => true  do	
    tipo_refeicao = FactoryGirl.create(:tipo_refeicao, :nome => 'Almoço')
	usuario = FactoryGirl.create(:usuario, :nome => 'Jaqueline')
	refeicao = FactoryGirl.create(:refeicao, :Tipo_Refeicao => tipo_refeicao, :Usuario => usuario)	
    visit refeicaos_path	
    click_link 'Excluir'
  end

 def preencher_e_verificar_refeicao	
    fill_in 'Calorias consumidas',  :with => 400	
    fill_in 'Hora', :with => '12:30'
	fill_in 'Data', :with => '24/10/2012'
    select 'Almoço', :on => 'tipo_refeicao'	
	select 'Jaqueline', :on => 'Usuario'
    click_button 'Salvar'
    page.should have_content 'Calorias consumidas: 400'
    page.should have_content 'Hora: 12:30'
    page.should have_content 'Data: 24/10/2012'
    page.should have_content 'TipoRefeicao: Almoço'
	page.should have_content 'Usuario: Jaqueline'
  end
	
end
