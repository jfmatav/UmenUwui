require 'rails_helper'

RSpec.describe "sodas/index", :type => :view do
  before(:each) do
    assign(:sodas, [
      Soda.create!(
        :nombre => "Nombre",
        :long => 1.5,
        :lat => 1.5,
        :descripcion => "Descripcion"
      ),
      Soda.create!(
        :nombre => "Nombre",
        :long => 1.5,
        :lat => 1.5,
        :descripcion => "Descripcion"
      )
    ])
  end

  it "renders a list of sodas" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
  end
end
