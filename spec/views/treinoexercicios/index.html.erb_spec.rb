require 'spec_helper'

describe "treinoexercicios/index" do
  before(:each) do
    assign(:treinoexercicios, [
      stub_model(Treinoexercicio,
        :treino => nil,
        :exercicio => nil
      ),
      stub_model(Treinoexercicio,
        :treino => nil,
        :exercicio => nil
      )
    ])
  end

  it "renders a list of treinoexercicios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
