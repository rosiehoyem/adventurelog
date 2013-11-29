require 'spec_helper'

describe "adventures/new" do
  before(:each) do
    assign(:adventure, stub_model(Adventure,
      :title => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new adventure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adventures_path, "post" do
      assert_select "input#adventure_title[name=?]", "adventure[title]"
      assert_select "input#adventure_description[name=?]", "adventure[description]"
    end
  end
end
