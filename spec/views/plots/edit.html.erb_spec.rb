require 'rails_helper'

RSpec.describe "plots/edit", type: :view do
  before(:each) do
    @plot = assign(:plot, Plot.create!(
      :plot_code => "",
      :plot_name => "MyString"
    ))
  end

  it "renders the edit plot form" do
    render

    assert_select "form[action=?][method=?]", plot_path(@plot), "post" do

      assert_select "input[name=?]", "plot[plot_code]"

      assert_select "input[name=?]", "plot[plot_name]"
    end
  end
end
