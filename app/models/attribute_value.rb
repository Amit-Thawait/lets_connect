class AttributeValue < ActiveRecord::Base
  attr_accessible :additional_attribute_id, :owner_id, :value
  belongs_to :additional_attribute
end