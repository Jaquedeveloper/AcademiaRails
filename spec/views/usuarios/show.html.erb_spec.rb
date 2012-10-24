require 'spec_helper'

describe "usuarios/show" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :nome => "Nome",
      :altura => 1,
      :sexo => "Sexo",
      :idade => 2,
      :peso_inicial => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/1/)
    rendered.should match(/Sexo/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
  end
end
