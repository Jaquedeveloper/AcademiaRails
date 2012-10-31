require 'spec_helper'

describe "historicos/show" do
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
      :calorias_a_consumir => 2,
      :peso_perdido => 1.5,
      :peso_a_perder => 1.5,
      :peso_ideal => 1.5,
      :saldo_calorias => 3,
      :situacao => "Situacao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/3/)
    rendered.should match(/Situacao/)
  end
end
