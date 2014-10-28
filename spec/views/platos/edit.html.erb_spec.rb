require 'rails_helper'

RSpec.describe "platos/edit", :type => :view do
  before(:each) do
    @plato = assign(:plato, Plato.create!(
      :soda_id => 1,
      :nombre => "MyString",
      :precio => 1,
      :categoria => "MyString",
      :tipo => "MyString",
      :calificaciones => 1,
      :total => 1,
      :semana => 1,
      :dia => 1
    ))
  end

  it "renders the edit plato form" do
    render

    assert_select "form[action=?][method=?]", plato_path(@plato), "post" do

      assert_select "input#plato_soda_id[name=?]", "plato[soda_id]"

      assert_select "input#plato_nombre[name=?]", "plato[nombre]"

      assert_select "input#plato_precio[name=?]", "plato[precio]"

      assert_select "input#plato_categoria[name=?]", "plato[categoria]"

      assert_select "input#plato_tipo[name=?]", "plato[tipo]"

      assert_select "input#plato_calificaciones[name=?]", "plato[calificaciones]"

      assert_select "input#plato_total[name=?]", "plato[total]"

      assert_select "input#plato_semana[name=?]", "plato[semana]"

      assert_select "input#plato_dia[name=?]", "plato[dia]"
    end
  end
end
