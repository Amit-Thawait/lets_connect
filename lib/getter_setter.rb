module GetterSetter
  def getters_setters_for_new_attrs(model_name, object_id)
    AdditionalAttribute.get_additional_attributes(model_name).each do |attr|
      define_method(attr.name) do
        attr.attribute_values.where(:owner_id => object_id).first.try(:value)
      end
      define_method("#{attr.name}=") do |value|
        obj = attr.attribute_values.where(:owner_id => object_id).first
        obj.value = value
        obj.save!
      end
    end
  end
end