require 'spec_helper'

describe "refeicaos/new" do
  before(:each) do
    assign(:refeicao, stub_model(Refeicao,
      :Tipo_Refeicao => nil,
      :Usuario => nil,
      :calorias_consumidas => 1,
      :hora => "MyString",
      :data => "MyString"
    ).as_new_record)
  end

  it "renders new refeicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => refeicaos_path, :method => "post" do
      assert_select "input#refeicao_Tipo_Refeicao", :name => "refeicao[Tipo_Refeicao]"
      assert_select "input#refeicao_Usuario", :name => "refeicao[Usuario]"
      assert_select "input#refeicao_calorias_consumidas", :name => "refeicao[calorias_consumidas]"
      assert_select "input#refeicao_hora", :name => "refeicao[hora]"
      assert_select "input#refeicao_data", :name => "refeicao[data]"
    end
  end
end
