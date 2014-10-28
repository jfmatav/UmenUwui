require 'rails_helper'

RSpec.describe "comentarios/show", :type => :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      :usuario_id => 1,
      :plato_id => 2,
      :comentario => "Comentario",
      :puntos => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Comentario/)
    expect(rendered).to match(/3/)
  end
end
