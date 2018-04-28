require 'rails_helper'

RSpec.describe "transects/edit", type: :view do
  before(:each) do
    @transect = assign(:transect, Transect.create!(
      :transect_code => "",
      :transect_name => "MyString"
    ))
  end

  it "renders the edit transect form" do
    render

    assert_select "form[action=?][method=?]", transect_path(@transect), "post" do

      assert_select "input[name=?]", "transect[transect_code]"

      assert_select "input[name=?]", "transect[transect_name]"
    end
  end
end
