# coding: utf-8
require 'spec_helper'

feature 'gerenciar treino' do
	
  scenario 'incluir treino' do #, :javascript => true  do	
    usuario = FactoryGirl.create(:usuario, :nome => 'Jaqueline')
	tipo_treino = FactoryGirl.create(:tipo_treino, :nome => 'Hipertrofia')
    visit new_treino_path
    preencher_e_verificar_treino
  end

  scenario 'alterar treino' do #, :javascript => true  do
   	usuario = FactoryGirl.create(:usuario, :nome => 'Jaqueline')
	tipo_treino = FactoryGirl.create(:tipo_treino, :nome => 'Hipertrofia')
	treino = FactoryGirl.create(:treino, :tipo_treino => tipo_treino, :usuario => usuario )
    visit edit_treino_path(treino)
    preencher_e_verificar_treino
  end
	
  scenario 'excluir treino' do #, :javascript => true  do	
    usuario = FactoryGirl.create(:usuario, :nome => 'Jaqueline')
	tipo_treino = FactoryGirl.create(:tipo_treino, :nome => 'Hipertrofia')
	treino = FactoryGirl.create(:treino, :tipo_treino => tipo_treino, :usuario => usuario )	
    visit treinos_path	
    click_link 'Excluir'
  end

 def preencher_e_verificar_treino	
    select 'Jaqueline', :on => 'usuario'	
	select 'Hipertrofia', :on => 'tipo_treino'
    click_button 'Salvar'
    page.should have_content 'Usuario: Jaqueline'
	page.should have_content 'Tipo treino: Hipertrofia'
  end
	
end
