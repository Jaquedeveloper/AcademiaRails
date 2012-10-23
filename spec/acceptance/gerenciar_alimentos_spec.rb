# coding: utf-8


require 'spec_helper'
feature 'gerenciar_alimentos' do
scenario 'incluir Alimentos' do # , :javascript => true  do
    visit new_alimento_path
	preencher_e_verificar_alimento
end

def preencher_e_verificar_alimento

	fill_in 'Nome',  :with => "Maca"
	fill_in 'Categoria',  :with => "fruta"
	fill_in 'Quantidade',  :with => 100
	fill_in 'Unidade de Medida',  :with => "gramas"
	fill_in 'Calorias',  :with => 80
	fill_in 'Carboidratos',  :with => 50
	fill_in 'Proteinas',  :with => 7
	fill_in 'Gorduras',  :with => 0
	click_button 'Salvar'
	page.should have_content 'Nome: Maca'
	page.should have_content 'Categoria: fruta'
	page.should have_content 'Quantidade: 100'
	page.should have_content 'Unidade de Medida: gramas'
	page.should have_content 'Calorias: 80'
	page.should have_content 'Carboidratos: 50'
	page.should have_content 'Proteinas: 7'
	page.should have_content 'Gorduras: 0'
end

end
