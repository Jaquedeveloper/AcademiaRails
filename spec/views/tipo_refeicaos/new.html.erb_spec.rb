require 'spec_helper'

describe "tipo_refeicaos/new" do
  before(:each) do
    assign(:tipo_refeicao, stub_model(TipoRefeicao,
      :nome => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_refeicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_refeicaos_path, :method => "post" do
      assert_select "input#tipo_refeicao_nome", :name => "tipo_refeicao[nome]"
      assert_select "input#tipo_refeicao_descricao", :name => "tipo_refeicao[descricao]"
    end
  end
end
