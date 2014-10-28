require 'rails_helper'

RSpec.describe "sodas/show", :type => :view do
  before(:each) do
    @soda = assign(:soda, Soda.create!(
      :nombre => "Nombre",
      :long => 1.5,
      :lat => 1.5,
      :descripcion => "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Descripcion/)
  end
end
