require 'rails_helper'

RSpec.describe "snacks/new", :type => :view do
  before(:each) do
    assign(:snack, Snack.new(
      :soda_id => 1,
      :nombre => "MyString",
      :precio => 1
    ))
  end

  it "renders new snack form" do
    render

    assert_select "form[action=?][method=?]", snacks_path, "post" do

      assert_select "input#snack_soda_id[name=?]", "snack[soda_id]"

      assert_select "input#snack_nombre[name=?]", "snack[nombre]"

      assert_select "input#snack_precio[name=?]", "snack[precio]"
    end
  end
end
