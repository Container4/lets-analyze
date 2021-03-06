require 'rails_helper'

RSpec.describe "species/edit", type: :view do
  before(:each) do
    @species = assign(:species, Species.create!(
      :species_code => "",
      :species_name => "MyString"
    ))
  end

  it "renders the edit species form" do
    render

    assert_select "form[action=?][method=?]", species_path(@species), "post" do

      assert_select "input[name=?]", "species[species_code]"

      assert_select "input[name=?]", "species[species_name]"
    end
  end
end
