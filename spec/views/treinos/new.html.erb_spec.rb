require 'spec_helper'

describe "treinos/new" do
  before(:each) do
    assign(:treino, stub_model(Treino,
      :usuario => nil,
      :tipo_treino => nil,
      :calorias_gastas => 1,
      :tempo => "MyString",
      :data => "MyString",
      :horario => "MyString"
    ).as_new_record)
  end

  it "renders new treino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => treinos_path, :method => "post" do
      assert_select "input#treino_usuario", :name => "treino[usuario]"
      assert_select "input#treino_tipo_treino", :name => "treino[tipo_treino]"
      assert_select "input#treino_calorias_gastas", :name => "treino[calorias_gastas]"
      assert_select "input#treino_tempo", :name => "treino[tempo]"
      assert_select "input#treino_data", :name => "treino[data]"
      assert_select "input#treino_horario", :name => "treino[horario]"
    end
  end
end
