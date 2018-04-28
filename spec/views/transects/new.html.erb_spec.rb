require 'rails_helper'

RSpec.describe "transects/new", type: :view do
  before(:each) do
    assign(:transect, Transect.new(
      :transect_code => "",
      :transect_name => "MyString"
    ))
  end

  it "renders new transect form" do
    render

    assert_select "form[action=?][method=?]", transects_path, "post" do

      assert_select "input[name=?]", "transect[transect_code]"

      assert_select "input[name=?]", "transect[transect_name]"
    end
  end
end
