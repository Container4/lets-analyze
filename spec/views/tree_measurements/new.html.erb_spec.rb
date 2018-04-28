require 'rails_helper'

RSpec.describe "tree_measurements/new", type: :view do
  before(:each) do
    assign(:tree_measurement, TreeMeasurement.new(
      :circumfrence_cm => 1,
      :subquadrat => "",
      :tree_label => "MyString",
      :species => nil,
      :plot => nil
    ))
  end

  it "renders new tree_measurement form" do
    render

    assert_select "form[action=?][method=?]", tree_measurements_path, "post" do

      assert_select "input[name=?]", "tree_measurement[circumfrence_cm]"

      assert_select "input[name=?]", "tree_measurement[subquadrat]"

      assert_select "input[name=?]", "tree_measurement[tree_label]"

      assert_select "input[name=?]", "tree_measurement[species_id]"

      assert_select "input[name=?]", "tree_measurement[plot_id]"
    end
  end
end
