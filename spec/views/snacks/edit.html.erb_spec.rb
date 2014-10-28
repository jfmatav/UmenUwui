require 'rails_helper'

RSpec.describe "snacks/edit", :type => :view do
  before(:each) do
    @snack = assign(:snack, Snack.create!(
      :soda_id => 1,
      :nombre => "MyString",
      :precio => 1
    ))
  end

  it "renders the edit snack form" do
    render

    assert_select "form[action=?][method=?]", snack_path(@snack), "post" do

      assert_select "input#snack_soda_id[name=?]", "snack[soda_id]"

      assert_select "input#snack_nombre[name=?]", "snack[nombre]"

      assert_select "input#snack_precio[name=?]", "snack[precio]"
    end
  end
end
