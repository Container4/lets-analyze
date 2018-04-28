require 'rails_helper'

RSpec.describe "species/index", type: :view do
  before(:each) do
    assign(:species, [
      Species.create!(
        :species_code => "",
        :species_name => "Species Name"
      ),
      Species.create!(
        :species_code => "",
        :species_name => "Species Name"
      )
    ])
  end

  it "renders a list of species" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Species Name".to_s, :count => 2
  end
end
