require 'spec_helper'

describe "additional_attributes/edit" do
  before(:each) do
    @additional_attribute = assign(:additional_attribute, stub_model(AdditionalAttribute,
      :name => "MyString",
      :attr_class => "MyString",
      :type => ""
    ))
  end

  it "renders the edit additional_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", additional_attribute_path(@additional_attribute), "post" do
      assert_select "input#additional_attribute_name[name=?]", "additional_attribute[name]"
      assert_select "input#additional_attribute_attr_class[name=?]", "additional_attribute[attr_class]"
      assert_select "input#additional_attribute_type[name=?]", "additional_attribute[type]"
    end
  end
end
