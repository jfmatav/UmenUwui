require 'rails_helper'

RSpec.describe "usuarios/index", :type => :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :nombre => "Nombre",
        :direccion => ""
      ),
      Usuario.create!(
        :nombre => "Nombre",
        :direccion => ""
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
