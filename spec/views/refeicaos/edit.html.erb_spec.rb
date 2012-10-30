require 'spec_helper'

describe "refeicaos/edit" do
  before(:each) do
    @refeicao = assign(:refeicao, stub_model(Refeicao,
      :Tipo_Refeicao => nil,
      :Usuario => nil,
      :calorias_consumidas => 1,
      :hora => "MyString",
      :data => "MyString"
    ))
  end

  it "renders the edit refeicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => refeicaos_path(@refeicao), :method => "post" do
      assert_select "input#refeicao_Tipo_Refeicao", :name => "refeicao[Tipo_Refeicao]"
      assert_select "input#refeicao_Usuario", :name => "refeicao[Usuario]"
      assert_select "input#refeicao_calorias_consumidas", :name => "refeicao[calorias_consumidas]"
      assert_select "input#refeicao_hora", :name => "refeicao[hora]"
      assert_select "input#refeicao_data", :name => "refeicao[data]"
    end
  end
end
