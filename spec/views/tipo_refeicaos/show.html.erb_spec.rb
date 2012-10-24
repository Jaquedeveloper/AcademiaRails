require 'spec_helper'

describe "tipo_refeicaos/show" do
  before(:each) do
    @tipo_refeicao = assign(:tipo_refeicao, stub_model(TipoRefeicao,
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
