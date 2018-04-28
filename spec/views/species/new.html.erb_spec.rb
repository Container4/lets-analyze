require 'rails_helper'

RSpec.describe "species/new", type: :view do
  before(:each) do
    assign(:species, Species.new(
      :species_code => "",
      :species_name => "MyString"
    ))
  end

  it "renders new species form" do
    render

    assert_select "form[action=?][method=?]", species_index_path, "post" do

      assert_select "input[name=?]", "species[species_code]"

      assert_select "input[name=?]", "species[species_name]"
    end
  end
end
