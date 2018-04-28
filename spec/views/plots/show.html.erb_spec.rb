require 'rails_helper'

RSpec.describe "plots/show", type: :view do
  before(:each) do
    @plot = assign(:plot, Plot.create!(
      :plot_code => "",
      :plot_name => "Plot Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Plot Name/)
  end
end
