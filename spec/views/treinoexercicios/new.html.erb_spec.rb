require 'spec_helper'

describe "treinoexercicios/new" do
  before(:each) do
    assign(:treinoexercicio, stub_model(Treinoexercicio,
      :treino => nil,
      :exercicio => nil
    ).as_new_record)
  end

  it "renders new treinoexercicio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => treinoexercicios_path, :method => "post" do
      assert_select "input#treinoexercicio_treino", :name => "treinoexercicio[treino]"
      assert_select "input#treinoexercicio_exercicio", :name => "treinoexercicio[exercicio]"
    end
  end
end
