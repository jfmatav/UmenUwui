require 'rails_helper'

RSpec.describe "acompanamientos/edit", :type => :view do
  before(:each) do
    @acompanamiento = assign(:acompanamiento, Acompanamiento.create!(
      :acompanamientos => "MyText",
      :dia => 1,
      :semana => 1,
      :soda_id => 1
    ))
  end

  it "renders the edit acompanamiento form" do
    render

    assert_select "form[action=?][method=?]", acompanamiento_path(@acompanamiento), "post" do

      assert_select "textarea#acompanamiento_acompanamientos[name=?]", "acompanamiento[acompanamientos]"

      assert_select "input#acompanamiento_dia[name=?]", "acompanamiento[dia]"

      assert_select "input#acompanamiento_semana[name=?]", "acompanamiento[semana]"

      assert_select "input#acompanamiento_soda_id[name=?]", "acompanamiento[soda_id]"
    end
  end
end
