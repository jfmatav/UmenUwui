require 'rails_helper'

RSpec.describe "acompanamientos/show", :type => :view do
  before(:each) do
    @acompanamiento = assign(:acompanamiento, Acompanamiento.create!(
      :acompanamientos => "MyText",
      :dia => 1,
      :semana => 2,
      :soda_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
