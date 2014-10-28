require 'rails_helper'

RSpec.describe "platos/index", :type => :view do
  before(:each) do
    assign(:platos, [
      Plato.create!(
        :soda_id => 1,
        :nombre => "Nombre",
        :precio => 2,
        :categoria => "Categoria",
        :tipo => "Tipo",
        :calificaciones => 3,
        :total => 4,
        :semana => 5,
        :dia => 6
      ),
      Plato.create!(
        :soda_id => 1,
        :nombre => "Nombre",
        :precio => 2,
        :categoria => "Categoria",
        :tipo => "Tipo",
        :calificaciones => 3,
        :total => 4,
        :semana => 5,
        :dia => 6
      )
    ])
  end

  it "renders a list of platos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
