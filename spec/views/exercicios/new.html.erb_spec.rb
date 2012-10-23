require 'spec_helper'

describe "exercicios/new" do
  before(:each) do
    assign(:exercicio, stub_model(Exercicio,
      :nome => "MyString",
      :calorias_gastas => 1,
      :numero_series => 1,
      :tempo_descanso => 1,
      :exercicios_series => 1
    ).as_new_record)
  end

  it "renders new exercicio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercicios_path, :method => "post" do
      assert_select "input#exercicio_nome", :name => "exercicio[nome]"
      assert_select "input#exercicio_calorias_gastas", :name => "exercicio[calorias_gastas]"
      assert_select "input#exercicio_numero_series", :name => "exercicio[numero_series]"
      assert_select "input#exercicio_tempo_descanso", :name => "exercicio[tempo_descanso]"
      assert_select "input#exercicio_exercicios_series", :name => "exercicio[exercicios_series]"
    end
  end
end
