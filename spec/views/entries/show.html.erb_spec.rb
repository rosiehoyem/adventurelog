require 'spec_helper'

describe "entries/show" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :event => "Event",
      :date => "Date",
      :location => "Location",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Event/)
    rendered.should match(/Date/)
    rendered.should match(/Location/)
    rendered.should match(/Type/)
  end
end
