require 'spec_helper'

describe "adventures/index" do
  before(:each) do
    assign(:adventures, [
      stub_model(Adventure,
        :title => "Title",
        :description => "Description"
      ),
      stub_model(Adventure,
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of adventures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
