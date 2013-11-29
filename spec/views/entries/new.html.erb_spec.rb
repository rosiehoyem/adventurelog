require 'spec_helper'

describe "entries/new" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :event => "MyString",
      :date => "MyString",
      :location => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entries_path, "post" do
      assert_select "input#entry_event[name=?]", "entry[event]"
      assert_select "input#entry_date[name=?]", "entry[date]"
      assert_select "input#entry_location[name=?]", "entry[location]"
      assert_select "input#entry_type[name=?]", "entry[type]"
    end
  end
end
