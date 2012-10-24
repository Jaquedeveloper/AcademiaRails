require 'spec_helper'

describe "usuarios/index" do
  before(:each) do
    assign(:usuarios, [
      stub_model(Usuario,
        :nome => "Nome",
        :altura => 1,
        :sexo => "Sexo",
        :idade => 2,
        :peso_inicial => 1.5
      ),
      stub_model(Usuario,
        :nome => "Nome",
        :altura => 1,
        :sexo => "Sexo",
        :idade => 2,
        :peso_inicial => 1.5
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
