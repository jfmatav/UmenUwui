require 'rails_helper'

RSpec.describe "comentarios/new", :type => :view do
  before(:each) do
    assign(:comentario, Comentario.new(
      :usuario_id => 1,
      :plato_id => 1,
      :comentario => "MyString",
      :puntos => 1
    ))
  end

  it "renders new comentario form" do
    render

    assert_select "form[action=?][method=?]", comentarios_path, "post" do

      assert_select "input#comentario_usuario_id[name=?]", "comentario[usuario_id]"

      assert_select "input#comentario_plato_id[name=?]", "comentario[plato_id]"

      assert_select "input#comentario_comentario[name=?]", "comentario[comentario]"

      assert_select "input#comentario_puntos[name=?]", "comentario[puntos]"
    end
  end
end
