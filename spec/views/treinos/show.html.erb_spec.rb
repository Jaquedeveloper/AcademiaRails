require 'spec_helper'

describe "treinos/show" do
  before(:each) do
    @treino = assign(:treino, stub_model(Treino,
      :usuario => nil,
      :tipo_treino => nil,
      :calorias_gastas => 1,
      :tempo => "Tempo",
      :data => "Data",
      :horario => "Horario"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/Tempo/)
    rendered.should match(/Data/)
    rendered.should match(/Horario/)
  end
end
