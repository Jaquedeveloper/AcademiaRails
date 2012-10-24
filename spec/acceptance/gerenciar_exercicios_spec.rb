# coding: utf-8

require 'spec_helper'

feature 'gerenciar exercicio' do

  scenario 'incluir exercicio' do # , :js => true  do

    visit new_exercicio_path

    preencher_e_verificar_exercicio

    

  end

  scenario 'alterar exercicio' do #, :js => true  do

    exercicio = FactoryGirl.create(:exercicio)

    visit edit_exercicio_path(exercicio)

    preencher_e_verificar_exercicio



  end

   scenario 'excluir exercicio' do #, :javascript => true  do

       exercicio = FactoryGirl.create(:exercicio)

        visit exercicios_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_exercicio

	fill_in 'Nome',  :with => "Supino"
	fill_in 'Calorias gastas',  :with => 200
	fill_in 'Número de séries',  :with => 3
	fill_in 'Tempo de descanso',  :with => 40
	fill_in 'Exercícios por série',  :with => 12
	click_button 'Salvar'
	page.should have_content 'Nome: Supino'
	page.should have_content 'Calorias gastas: 200'
	page.should have_content 'Número de séries: 3'
	page.should have_content 'Tempo de descanso: 40'
	page.should have_content 'Exercícios por série: 12'
   end
end
