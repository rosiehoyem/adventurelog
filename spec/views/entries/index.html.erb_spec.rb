require 'spec_helper'

describe "entries/index" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :event => "Event",
        :date => "Date",
        :location => "Location",
        :type => "Type"
      ),
      stub_model(Entry,
        :event => "Event",
        :date => "Date",
        :location => "Location",
        :type => "Type"
      )
    ])
  end

  it "renders a list of entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Event".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
