require 'spec_helper'

describe "alimentorefeicaos/edit" do
  before(:each) do
    @alimentorefeicao = assign(:alimentorefeicao, stub_model(Alimentorefeicao,
      :refeicao => nil,
      :alimento => nil
    ))
  end

  it "renders the edit alimentorefeicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alimentorefeicaos_path(@alimentorefeicao), :method => "post" do
      assert_select "input#alimentorefeicao_refeicao", :name => "alimentorefeicao[refeicao]"
      assert_select "input#alimentorefeicao_alimento", :name => "alimentorefeicao[alimento]"
    end
  end
end
