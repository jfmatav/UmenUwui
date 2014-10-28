require 'rails_helper'

RSpec.describe "sodas/new", :type => :view do
  before(:each) do
    assign(:soda, Soda.new(
      :nombre => "MyString",
      :long => 1.5,
      :lat => 1.5,
      :descripcion => "MyString"
    ))
  end

  it "renders new soda form" do
    render

    assert_select "form[action=?][method=?]", sodas_path, "post" do

      assert_select "input#soda_nombre[name=?]", "soda[nombre]"

      assert_select "input#soda_long[name=?]", "soda[long]"

      assert_select "input#soda_lat[name=?]", "soda[lat]"

      assert_select "input#soda_descripcion[name=?]", "soda[descripcion]"
    end
  end
end
