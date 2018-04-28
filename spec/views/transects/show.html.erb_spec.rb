require 'rails_helper'

RSpec.describe "transects/show", type: :view do
  before(:each) do
    @transect = assign(:transect, Transect.create!(
      :transect_code => "",
      :transect_name => "Transect Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Transect Name/)
  end
end
