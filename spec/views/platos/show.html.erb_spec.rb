require 'rails_helper'

RSpec.describe "platos/show", :type => :view do
  before(:each) do
    @plato = assign(:plato, Plato.create!(
      :soda_id => 1,
      :nombre => "Nombre",
      :precio => 2,
      :categoria => "Categoria",
      :tipo => "Tipo",
      :calificaciones => 3,
      :total => 4,
      :semana => 5,
      :dia => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Categoria/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
