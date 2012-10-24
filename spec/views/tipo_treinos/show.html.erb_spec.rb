require 'spec_helper'

describe "tipo_treinos/show" do
  before(:each) do
    @tipo_treino = assign(:tipo_treino, stub_model(TipoTreino,
      :nome => "Nome",
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Descricao/)
  end
end
