require 'rails_helper'

RSpec.describe "comentarios/index", :type => :view do
  before(:each) do
    assign(:comentarios, [
      Comentario.create!(
        :usuario_id => 1,
        :plato_id => 2,
        :comentario => "Comentario",
        :puntos => 3
      ),
      Comentario.create!(
        :usuario_id => 1,
        :plato_id => 2,
        :comentario => "Comentario",
        :puntos => 3
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Comentario".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
