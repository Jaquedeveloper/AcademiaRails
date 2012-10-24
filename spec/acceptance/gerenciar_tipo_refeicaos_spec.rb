# coding: utf-8

require 'spec_helper'

feature 'gerenciar tipo_refeicao' do

  scenario 'incluir tipo_refeicao' do # , :js => true  do

    visit new_tipo_refeicao_path

    preencher_e_verificar_tipo_refeicao

    

  end

  scenario 'alterar tipo_refeicao' do #, :js => true  do

    tipo_refeicao = FactoryGirl.create(:tipo_refeicao)

    visit edit_tipo_refeicao_path(tipo_refeicao)

    preencher_e_verificar_tipo_refeicao



  end

   scenario 'excluir tipo_refeicao' do #, :javascript => true  do

       tipo_refeicao = FactoryGirl.create(:tipo_refeicao)

        visit tipo_refeicaos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tipo_refeicao

	fill_in 'Nome',  :with => "Café da Manhã"
	fill_in 'Descrição',  :with => "Deve ser a refeição com mais nutrientes do dia."
	click_button 'Salvar'
	page.should have_content 'Nome: Café da Manhã'
	page.should have_content 'Descrição: Deve ser a refeição com mais nutrientes do dia.'
   end
end
