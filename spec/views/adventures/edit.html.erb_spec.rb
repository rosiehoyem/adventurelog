require 'spec_helper'

describe "adventures/edit" do
  before(:each) do
    @adventure = assign(:adventure, stub_model(Adventure,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit adventure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adventure_path(@adventure), "post" do
      assert_select "input#adventure_title[name=?]", "adventure[title]"
      assert_select "input#adventure_description[name=?]", "adventure[description]"
    end
  end
end
