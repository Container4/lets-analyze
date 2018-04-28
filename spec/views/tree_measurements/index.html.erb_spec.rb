require 'rails_helper'

RSpec.describe "tree_measurements/index", type: :view do
  before(:each) do
    assign(:tree_measurements, [
      TreeMeasurement.create!(
        :circumfrence_cm => 2,
        :subquadrat => "",
        :tree_label => "Tree Label",
        :species => nil,
        :plot => nil
      ),
      TreeMeasurement.create!(
        :circumfrence_cm => 2,
        :subquadrat => "",
        :tree_label => "Tree Label",
        :species => nil,
        :plot => nil
      )
    ])
  end

  it "renders a list of tree_measurements" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Tree Label".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
