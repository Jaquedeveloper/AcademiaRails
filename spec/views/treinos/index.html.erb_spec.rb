require 'spec_helper'

describe "treinos/index" do
  before(:each) do
    assign(:treinos, [
      stub_model(Treino,
        :usuario => nil,
        :tipo_treino => nil,
        :calorias_gastas => 1,
        :tempo => "Tempo",
        :data => "Data",
        :horario => "Horario"
      ),
      stub_model(Treino,
        :usuario => nil,
        :tipo_treino => nil,
        :calorias_gastas => 1,
        :tempo => "Tempo",
        :data => "Data",
        :horario => "Horario"
      )
    ])
  end

  it "renders a list of treinos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Tempo".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
  end
end
