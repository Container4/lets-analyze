require 'rails_helper'

RSpec.describe "plots/new", type: :view do
  before(:each) do
    assign(:plot, Plot.new(
      :plot_code => "",
      :plot_name => "MyString",
      :references => ""
    ))
  end

  it "renders new plot form" do
    render

    assert_select "form[action=?][method=?]", plots_path, "post" do

      assert_select "input[name=?]", "plot[plot_code]"

      assert_select "input[name=?]", "plot[plot_name]"

      assert_select "input[name=?]", "plot[references]"
    end
  end
end
