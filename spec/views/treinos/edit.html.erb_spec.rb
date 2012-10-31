require 'spec_helper'

describe "treinos/edit" do
  before(:each) do
    @treino = assign(:treino, stub_model(Treino,
      :usuario => nil,
      :tipo_treino => nil,
      :calorias_gastas => 1,
      :tempo => "MyString",
      :data => "MyString",
      :horario => "MyString"
    ))
  end

  it "renders the edit treino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => treinos_path(@treino), :method => "post" do
      assert_select "input#treino_usuario", :name => "treino[usuario]"
      assert_select "input#treino_tipo_treino", :name => "treino[tipo_treino]"
      assert_select "input#treino_calorias_gastas", :name => "treino[calorias_gastas]"
      assert_select "input#treino_tempo", :name => "treino[tempo]"
      assert_select "input#treino_data", :name => "treino[data]"
      assert_select "input#treino_horario", :name => "treino[horario]"
    end
  end
end
