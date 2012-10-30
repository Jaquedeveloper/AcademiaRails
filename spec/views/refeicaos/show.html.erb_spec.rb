require 'spec_helper'

describe "refeicaos/show" do
  before(:each) do
    @refeicao = assign(:refeicao, stub_model(Refeicao,
      :Tipo_Refeicao => nil,
      :Usuario => nil,
      :calorias_consumidas => 1,
      :hora => "Hora",
      :data => "Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/Hora/)
    rendered.should match(/Data/)
  end
end
