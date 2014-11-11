require 'rails_helper'

RSpec.describe "acompanamientos/new", :type => :view do
  before(:each) do
    assign(:acompanamiento, Acompanamiento.new(
      :acompanamientos => "MyText",
      :dia => 1,
      :semana => 1,
      :soda_id => 1
    ))
  end

  it "renders new acompanamiento form" do
    render

    assert_select "form[action=?][method=?]", acompanamientos_path, "post" do

      assert_select "textarea#acompanamiento_acompanamientos[name=?]", "acompanamiento[acompanamientos]"

      assert_select "input#acompanamiento_dia[name=?]", "acompanamiento[dia]"

      assert_select "input#acompanamiento_semana[name=?]", "acompanamiento[semana]"

      assert_select "input#acompanamiento_soda_id[name=?]", "acompanamiento[soda_id]"
    end
  end
end
