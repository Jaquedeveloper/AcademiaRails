require 'spec_helper'

describe "alimentorefeicaos/show" do
  before(:each) do
    @alimentorefeicao = assign(:alimentorefeicao, stub_model(Alimentorefeicao,
      :refeicao => nil,
      :alimento => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
