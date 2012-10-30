require 'spec_helper'

describe "refeicaos/index" do
  before(:each) do
    assign(:refeicaos, [
      stub_model(Refeicao,
        :Tipo_Refeicao => nil,
        :Usuario => nil,
        :calorias_consumidas => 1,
        :hora => "Hora",
        :data => "Data"
      ),
      stub_model(Refeicao,
        :Tipo_Refeicao => nil,
        :Usuario => nil,
        :calorias_consumidas => 1,
        :hora => "Hora",
        :data => "Data"
      )
    ])
  end

  it "renders a list of refeicaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
  end
end
