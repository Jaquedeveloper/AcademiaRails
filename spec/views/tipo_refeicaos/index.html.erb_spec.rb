require 'spec_helper'

describe "tipo_refeicaos/index" do
  before(:each) do
    assign(:tipo_refeicaos, [
      stub_model(TipoRefeicao,
        :nome => "Nome",
        :descricao => "Descricao"
      ),
      stub_model(TipoRefeicao,
        :nome => "Nome",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipo_refeicaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
