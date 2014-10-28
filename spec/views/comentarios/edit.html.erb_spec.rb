require 'rails_helper'

RSpec.describe "comentarios/edit", :type => :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      :usuario_id => 1,
      :plato_id => 1,
      :comentario => "MyString",
      :puntos => 1
    ))
  end

  it "renders the edit comentario form" do
    render

    assert_select "form[action=?][method=?]", comentario_path(@comentario), "post" do

      assert_select "input#comentario_usuario_id[name=?]", "comentario[usuario_id]"

      assert_select "input#comentario_plato_id[name=?]", "comentario[plato_id]"

      assert_select "input#comentario_comentario[name=?]", "comentario[comentario]"

      assert_select "input#comentario_puntos[name=?]", "comentario[puntos]"
    end
  end
end
