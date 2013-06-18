class AttributeValue < ActiveRecord::Base
  #attr_accessible :attr_class, :name, :type
  belongs_to :additional_attribute
end