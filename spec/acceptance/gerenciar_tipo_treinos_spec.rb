# coding: utf-8

require 'spec_helper'

feature 'gerenciar tipo_treino' do

  scenario 'incluir tipo_treino' do # , :js => true  do

    visit new_tipo_treino_path

    preencher_e_verificar_tipo_treino

    

  end

  scenario 'alterar tipo_treino' do #, :js => true  do

    tipo_treino = FactoryGirl.create(:tipo_treino)

    visit edit_tipo_treino_path(tipo_treino)

    preencher_e_verificar_tipo_treino



  end

   scenario 'excluir tipo_treino' do #, :javascript => true  do

       tipo_treino = FactoryGirl.create(:tipo_treino)

        visit tipo_treinos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tipo_treino

	fill_in 'Nome',  :with => "Hipertrofia"
	fill_in 'Descrição',  :with => "Treino para ganho de massa muscular."
	click_button 'Salvar'
	page.should have_content 'Nome: Hipertrofia'
	page.should have_content 'Descrição: Treino para ganho de massa muscular.'
   end
end
