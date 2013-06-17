require 'spec_helper'

describe "additional_attributes/new" do
  before(:each) do
    assign(:additional_attribute, stub_model(AdditionalAttribute,
      :name => "MyString",
      :attr_class => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new additional_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", additional_attributes_path, "post" do
      assert_select "input#additional_attribute_name[name=?]", "additional_attribute[name]"
      assert_select "input#additional_attribute_attr_class[name=?]", "additional_attribute[attr_class]"
      assert_select "input#additional_attribute_type[name=?]", "additional_attribute[type]"
    end
  end
end
