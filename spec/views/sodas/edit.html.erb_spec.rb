require 'rails_helper'

RSpec.describe "sodas/edit", :type => :view do
  before(:each) do
    @soda = assign(:soda, Soda.create!(
      :nombre => "MyString",
      :long => 1.5,
      :lat => 1.5,
      :descripcion => "MyString"
    ))
  end

  it "renders the edit soda form" do
    render

    assert_select "form[action=?][method=?]", soda_path(@soda), "post" do

      assert_select "input#soda_nombre[name=?]", "soda[nombre]"

      assert_select "input#soda_long[name=?]", "soda[long]"

      assert_select "input#soda_lat[name=?]", "soda[lat]"

      assert_select "input#soda_descripcion[name=?]", "soda[descripcion]"
    end
  end
end
