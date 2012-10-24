require 'spec_helper'

describe "tipo_refeicaos/edit" do
  before(:each) do
    @tipo_refeicao = assign(:tipo_refeicao, stub_model(TipoRefeicao,
      :nome => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_refeicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_refeicaos_path(@tipo_refeicao), :method => "post" do
      assert_select "input#tipo_refeicao_nome", :name => "tipo_refeicao[nome]"
      assert_select "input#tipo_refeicao_descricao", :name => "tipo_refeicao[descricao]"
    end
  end
end
