require 'spec_helper'

describe "alimentorefeicaos/new" do
  before(:each) do
    assign(:alimentorefeicao, stub_model(Alimentorefeicao,
      :refeicao => nil,
      :alimento => nil
    ).as_new_record)
  end

  it "renders new alimentorefeicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alimentorefeicaos_path, :method => "post" do
      assert_select "input#alimentorefeicao_refeicao", :name => "alimentorefeicao[refeicao]"
      assert_select "input#alimentorefeicao_alimento", :name => "alimentorefeicao[alimento]"
    end
  end
end
