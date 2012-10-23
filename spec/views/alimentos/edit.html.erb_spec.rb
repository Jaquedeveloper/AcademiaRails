require 'spec_helper'

describe "alimentos/edit" do
  before(:each) do
    @alimento = assign(:alimento, stub_model(Alimento,
      :nome => "MyString",
      :categoria => "MyString",
      :quantidade => 1,
      :unidade_medida => "MyString",
      :calorias => 1,
      :proteinas => 1,
      :carboidratos => 1,
      :gorduras => 1
    ))
  end

  it "renders the edit alimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alimentos_path(@alimento), :method => "post" do
      assert_select "input#alimento_nome", :name => "alimento[nome]"
      assert_select "input#alimento_categoria", :name => "alimento[categoria]"
      assert_select "input#alimento_quantidade", :name => "alimento[quantidade]"
      assert_select "input#alimento_unidade_medida", :name => "alimento[unidade_medida]"
      assert_select "input#alimento_calorias", :name => "alimento[calorias]"
      assert_select "input#alimento_proteinas", :name => "alimento[proteinas]"
      assert_select "input#alimento_carboidratos", :name => "alimento[carboidratos]"
      assert_select "input#alimento_gorduras", :name => "alimento[gorduras]"
    end
  end
end
