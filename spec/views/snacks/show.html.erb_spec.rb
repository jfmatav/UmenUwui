require 'rails_helper'

RSpec.describe "snacks/show", :type => :view do
  before(:each) do
    @snack = assign(:snack, Snack.create!(
      :soda_id => 1,
      :nombre => "Nombre",
      :precio => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/2/)
  end
end
