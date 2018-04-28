require 'rails_helper'

RSpec.describe "species/show", type: :view do
  before(:each) do
    @species = assign(:species, Species.create!(
      :species_code => "",
      :species_name => "Species Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Species Name/)
  end
end
