require 'spec_helper'

describe "treinoexercicios/edit" do
  before(:each) do
    @treinoexercicio = assign(:treinoexercicio, stub_model(Treinoexercicio,
      :treino => nil,
      :exercicio => nil
    ))
  end

  it "renders the edit treinoexercicio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => treinoexercicios_path(@treinoexercicio), :method => "post" do
      assert_select "input#treinoexercicio_treino", :name => "treinoexercicio[treino]"
      assert_select "input#treinoexercicio_exercicio", :name => "treinoexercicio[exercicio]"
    end
  end
end
