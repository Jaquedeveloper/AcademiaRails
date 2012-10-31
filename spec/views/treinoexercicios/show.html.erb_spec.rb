require 'spec_helper'

describe "treinoexercicios/show" do
  before(:each) do
    @treinoexercicio = assign(:treinoexercicio, stub_model(Treinoexercicio,
      :treino => nil,
      :exercicio => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
