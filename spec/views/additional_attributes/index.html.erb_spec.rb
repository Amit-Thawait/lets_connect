require 'spec_helper'

describe "additional_attributes/index" do
  before(:each) do
    assign(:additional_attributes, [
      stub_model(AdditionalAttribute,
        :name => "Name",
        :attr_class => "Attr Class",
        :type => "Type"
      ),
      stub_model(AdditionalAttribute,
        :name => "Name",
        :attr_class => "Attr Class",
        :type => "Type"
      )
    ])
  end

  it "renders a list of additional_attributes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Attr Class".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
