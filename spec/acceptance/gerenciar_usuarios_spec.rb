# coding: utf-8

require 'spec_helper'

feature 'gerenciar usuario' do

  scenario 'incluir usuario' do # , :js => true  do

    visit new_usuario_path

    preencher_e_verificar_usuario

    

  end

  scenario 'alterar usuario' do #, :js => true  do

    usuario = FactoryGirl.create(:usuario)

    visit edit_usuario_path(usuario)

    preencher_e_verificar_usuario



  end

   scenario 'excluir usuario' do #, :javascript => true  do

       usuario = FactoryGirl.create(:usuario)

        visit usuarios_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_usuario

	fill_in 'Nome',  :with => "Jaqueline"
	fill_in 'Altura',  :with => 160
	fill_in 'Sexo',  :with => "F"
	fill_in 'Idade',  :with => 20
	fill_in 'Peso inicial',  :with => 56.7
	click_button 'Salvar'
	page.should have_content 'Nome: Jaqueline'
	page.should have_content 'Altura: 160'
	page.should have_content 'Sexo: F'
	page.should have_content 'Idade: 20'
	page.should have_content 'Peso inicial: 56.7'
   end
end
