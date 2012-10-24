require 'spec_helper'

describe "tipo_treinos/new" do
  before(:each) do
    assign(:tipo_treino, stub_model(TipoTreino,
      :nome => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_treino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_treinos_path, :method => "post" do
      assert_select "input#tipo_treino_nome", :name => "tipo_treino[nome]"
      assert_select "input#tipo_treino_descricao", :name => "tipo_treino[descricao]"
    end
  end
end
