require 'spec_helper'

describe "exercicios/index" do
  before(:each) do
    assign(:exercicios, [
      stub_model(Exercicio,
        :nome => "Nome",
        :calorias_gastas => 1,
        :numero_series => 2,
        :tempo_descanso => 3,
        :exercicios_series => 4
      ),
      stub_model(Exercicio,
        :nome => "Nome",
        :calorias_gastas => 1,
        :numero_series => 2,
        :tempo_descanso => 3,
        :exercicios_series => 4
      )
    ])
  end

  it "renders a list of exercicios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
