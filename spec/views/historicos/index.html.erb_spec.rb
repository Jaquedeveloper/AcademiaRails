require 'spec_helper'

describe "historicos/index" do
  before(:each) do
    assign(:historicos, [
      stub_model(Historico,
        :refeicao => nil,
        :treino => nil,
        :peso_atual => 1.5,
        :gordura_corporal => 1.5,
        :valor_metabolico => 1,
        :peso_gordura => 1.5,
        :peso_gordura_ideal => 1.5,
        :massa_magra => 1.5,
        :calorias_a_consumir => 2,
        :peso_perdido => 1.5,
        :peso_a_perder => 1.5,
        :peso_ideal => 1.5,
        :saldo_calorias => 3,
        :situacao => "Situacao"
      ),
      stub_model(Historico,
        :refeicao => nil,
        :treino => nil,
        :peso_atual => 1.5,
        :gordura_corporal => 1.5,
        :valor_metabolico => 1,
        :peso_gordura => 1.5,
        :peso_gordura_ideal => 1.5,
        :massa_magra => 1.5,
        :calorias_a_consumir => 2,
        :peso_perdido => 1.5,
        :peso_a_perder => 1.5,
        :peso_ideal => 1.5,
        :saldo_calorias => 3,
        :situacao => "Situacao"
      )
    ])
  end

  it "renders a list of historicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Situacao".to_s, :count => 2
  end
end
