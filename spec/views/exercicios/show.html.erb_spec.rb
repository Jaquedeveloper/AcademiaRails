require 'spec_helper'

describe "exercicios/show" do
  before(:each) do
    @exercicio = assign(:exercicio, stub_model(Exercicio,
      :nome => "Nome",
      :calorias_gastas => 1,
      :numero_series => 2,
      :tempo_descanso => 3,
      :exercicios_series => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
