require 'rails_helper'

RSpec.describe "transects/index", type: :view do
  before(:each) do
    assign(:transects, [
      Transect.create!(
        :transect_code => "",
        :transect_name => "Transect Name"
      ),
      Transect.create!(
        :transect_code => "",
        :transect_name => "Transect Name"
      )
    ])
  end

  it "renders a list of transects" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Transect Name".to_s, :count => 2
  end
end
