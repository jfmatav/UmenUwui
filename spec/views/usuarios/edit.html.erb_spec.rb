require 'rails_helper'

RSpec.describe "usuarios/edit", :type => :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nombre => "MyString",
      :direccion => ""
    ))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input#usuario_nombre[name=?]", "usuario[nombre]"

      assert_select "input#usuario_direccion[name=?]", "usuario[direccion]"
    end
  end
end
