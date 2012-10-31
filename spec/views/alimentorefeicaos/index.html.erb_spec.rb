require 'spec_helper'

describe "alimentorefeicaos/index" do
  before(:each) do
    assign(:alimentorefeicaos, [
      stub_model(Alimentorefeicao,
        :refeicao => nil,
        :alimento => nil
      ),
      stub_model(Alimentorefeicao,
        :refeicao => nil,
        :alimento => nil
      )
    ])
  end

  it "renders a list of alimentorefeicaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
