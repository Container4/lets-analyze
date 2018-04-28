require 'rails_helper'

RSpec.describe "plots/index", type: :view do
  before(:each) do
    assign(:plots, [
      Plot.create!(
        :plot_code => "",
        :plot_name => "Plot Name",
        :references => ""
      ),
      Plot.create!(
        :plot_code => "",
        :plot_name => "Plot Name",
        :references => ""
      )
    ])
  end

  it "renders a list of plots" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Plot Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
