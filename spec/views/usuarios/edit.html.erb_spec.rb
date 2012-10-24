require 'spec_helper'

describe "usuarios/edit" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :nome => "MyString",
      :altura => 1,
      :sexo => "MyString",
      :idade => 1,
      :peso_inicial => 1.5
    ))
  end

  it "renders the edit usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usuarios_path(@usuario), :method => "post" do
      assert_select "input#usuario_nome", :name => "usuario[nome]"
      assert_select "input#usuario_altura", :name => "usuario[altura]"
      assert_select "input#usuario_sexo", :name => "usuario[sexo]"
      assert_select "input#usuario_idade", :name => "usuario[idade]"
      assert_select "input#usuario_peso_inicial", :name => "usuario[peso_inicial]"
    end
  end
end
