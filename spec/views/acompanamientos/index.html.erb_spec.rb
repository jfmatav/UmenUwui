require 'rails_helper'

RSpec.describe "acompanamientos/index", :type => :view do
  before(:each) do
    assign(:acompanamientos, [
      Acompanamiento.create!(
        :acompanamientos => "MyText",
        :dia => 1,
        :semana => 2,
        :soda_id => 3
      ),
      Acompanamiento.create!(
        :acompanamientos => "MyText",
        :dia => 1,
        :semana => 2,
        :soda_id => 3
      )
    ])
  end

  it "renders a list of acompanamientos" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
