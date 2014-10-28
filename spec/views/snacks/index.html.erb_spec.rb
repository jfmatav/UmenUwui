require 'rails_helper'

RSpec.describe "snacks/index", :type => :view do
  before(:each) do
    assign(:snacks, [
      Snack.create!(
        :soda_id => 1,
        :nombre => "Nombre",
        :precio => 2
      ),
      Snack.create!(
        :soda_id => 1,
        :nombre => "Nombre",
        :precio => 2
      )
    ])
  end

  it "renders a list of snacks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
