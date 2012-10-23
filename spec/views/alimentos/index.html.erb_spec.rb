require 'spec_helper'

describe "alimentos/index" do
  before(:each) do
    assign(:alimentos, [
      stub_model(Alimento,
        :nome => "Nome",
        :categoria => "Categoria",
        :quantidade => 1,
        :unidade_medida => "Unidade Medida",
        :calorias => 2,
        :proteinas => 3,
        :carboidratos => 4,
        :gorduras => 5
      ),
      stub_model(Alimento,
        :nome => "Nome",
        :categoria => "Categoria",
        :quantidade => 1,
        :unidade_medida => "Unidade Medida",
        :calorias => 2,
        :proteinas => 3,
        :carboidratos => 4,
        :gorduras => 5
      )
    ])
  end

  it "renders a list of alimentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Unidade Medida".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
