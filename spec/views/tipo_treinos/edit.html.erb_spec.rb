require 'spec_helper'

describe "tipo_treinos/edit" do
  before(:each) do
    @tipo_treino = assign(:tipo_treino, stub_model(TipoTreino,
      :nome => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_treino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_treinos_path(@tipo_treino), :method => "post" do
      assert_select "input#tipo_treino_nome", :name => "tipo_treino[nome]"
      assert_select "input#tipo_treino_descricao", :name => "tipo_treino[descricao]"
    end
  end
end
