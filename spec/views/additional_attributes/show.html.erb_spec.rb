require 'spec_helper'

describe "additional_attributes/show" do
  before(:each) do
    @additional_attribute = assign(:additional_attribute, stub_model(AdditionalAttribute,
      :name => "Name",
      :attr_class => "Attr Class",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Attr Class/)
    rendered.should match(/Type/)
  end
end
