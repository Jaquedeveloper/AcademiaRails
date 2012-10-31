# coding: utf-8
require 'spec_helper'

feature 'gerenciar treinoexercicio' do
	
  scenario 'incluir treinoexercicio' do #, :javascript => true  do	
    exercicio = FactoryGirl.create(:exercicio, :nome => 'Agachamento')
	treino = FactoryGirl.create(:treino, :data => '31/10/2012')
    visit new_treinoexercicio_path
    preencher_e_verificar_treinoexercicio
  end

  scenario 'alterar treinoexercicio' do #, :javascript => true  do
   	exercicio = FactoryGirl.create(:exercicio, :nome => 'Agachamento')
	treino = FactoryGirl.create(:treino, :data => '31/10/2012')
	treinoexercicio = FactoryGirl.create(:treinoexercicio, :treino => treino, :exercicio => exercicio )
    visit edit_treinoexercicio_path(treinoexercicio)
    preencher_e_verificar_treinoexercicio
  end
	
  scenario 'excluir treinoexercicio' do #, :javascript => true  do	
    exercicio = FactoryGirl.create(:exercicio, :nome => 'Agachamento')
	treino = FactoryGirl.create(:treino, :data => '31/10/2012')
	treinoexercicio = FactoryGirl.create(:treinoexercicio, :treino => treino, :exercicio => exercicio )
    visit treinoexercicios_path	
    click_link 'Excluir'
  end

 def preencher_e_verificar_treinoexercicio	
    select 'Agachamento', :on => 'Exercicio'	
	select '31/10/2012', :on => 'treino'
    click_button 'Salvar'
    page.should have_content 'Exercicio: Agachamento'
	page.should have_content 'Treino: 31/10/2012'
  end
	
end
