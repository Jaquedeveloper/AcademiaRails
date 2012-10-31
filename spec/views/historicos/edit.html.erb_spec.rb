require 'spec_helper'

describe "historicos/edit" do
  before(:each) do
    @historico = assign(:historico, stub_model(Historico,
      :refeicao => nil,
      :treino => nil,
      :peso_atual => 1.5,
      :gordura_corporal => 1.5,
      :valor_metabolico => 1,
      :peso_gordura => 1.5,
      :peso_gordura_ideal => 1.5,
      :massa_magra => 1.5,
      :calorias_a_consumir => 1,
      :peso_perdido => 1.5,
      :peso_a_perder => 1.5,
      :peso_ideal => 1.5,
      :saldo_calorias => 1,
      :situacao => "MyString"
    ))
  end

  it "renders the edit historico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => historicos_path(@historico), :method => "post" do
      assert_select "input#historico_refeicao", :name => "historico[refeicao]"
      assert_select "input#historico_treino", :name => "historico[treino]"
      assert_select "input#historico_peso_atual", :name => "historico[peso_atual]"
      assert_select "input#historico_gordura_corporal", :name => "historico[gordura_corporal]"
      assert_select "input#historico_valor_metabolico", :name => "historico[valor_metabolico]"
      assert_select "input#historico_peso_gordura", :name => "historico[peso_gordura]"
      assert_select "input#historico_peso_gordura_ideal", :name => "historico[peso_gordura_ideal]"
      assert_select "input#historico_massa_magra", :name => "historico[massa_magra]"
      assert_select "input#historico_calorias_a_consumir", :name => "historico[calorias_a_consumir]"
      assert_select "input#historico_peso_perdido", :name => "historico[peso_perdido]"
      assert_select "input#historico_peso_a_perder", :name => "historico[peso_a_perder]"
      assert_select "input#historico_peso_ideal", :name => "historico[peso_ideal]"
      assert_select "input#historico_saldo_calorias", :name => "historico[saldo_calorias]"
      assert_select "input#historico_situacao", :name => "historico[situacao]"
    end
  end
end
