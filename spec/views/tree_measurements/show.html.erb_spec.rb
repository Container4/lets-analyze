require 'rails_helper'

RSpec.describe "tree_measurements/show", type: :view do
  before(:each) do
    @tree_measurement = assign(:tree_measurement, TreeMeasurement.create!(
      :circumfrence_cm => 2,
      :subquadrat => "",
      :tree_label => "Tree Label",
      :species => nil,
      :plot => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Tree Label/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
