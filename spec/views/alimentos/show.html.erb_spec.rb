require 'spec_helper'

describe "alimentos/show" do
  before(:each) do
    @alimento = assign(:alimento, stub_model(Alimento,
      :nome => "Nome",
      :categoria => "Categoria",
      :quantidade => 1,
      :unidade_medida => "Unidade Medida",
      :calorias => 2,
      :proteinas => 3,
      :carboidratos => 4,
      :gorduras => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Categoria/)
    rendered.should match(/1/)
    rendered.should match(/Unidade Medida/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
