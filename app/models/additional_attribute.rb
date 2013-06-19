class AdditionalAttribute < ActiveRecord::Base
  attr_accessible :attr_class, :name, :attr_type, :value

  SINGLE_VALUED_ATTRIBUTE = ['Integer', 'Float', 'String', 'Date', 'Relationship']
  MULTI_VALUED_ATTRIBUTE = ['Select Box', 'Checkbox', 'Radio Button']

  serialize :value

  has_one :attribute_value

  scope :get_additional_attributes, lambda{|attr_class| where(:attr_class => attr_class)}

  def get_model_names  	
  	ActiveRecord::Base.descendants.map(&:name).sort - [self.class.name]
  end

end