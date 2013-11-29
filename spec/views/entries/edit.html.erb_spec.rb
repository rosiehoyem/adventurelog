require 'spec_helper'

describe "entries/edit" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :event => "MyString",
      :date => "MyString",
      :location => "MyString",
      :type => ""
    ))
  end

  it "renders the edit entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do
      assert_select "input#entry_event[name=?]", "entry[event]"
      assert_select "input#entry_date[name=?]", "entry[date]"
      assert_select "input#entry_location[name=?]", "entry[location]"
      assert_select "input#entry_type[name=?]", "entry[type]"
    end
  end
end
