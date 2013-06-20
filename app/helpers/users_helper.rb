module UsersHelper

  def get_attr_value(attr, user)
    attr.attribute_values.where(:owner_id => user.id).first.value
  end
    
  def generate_feilds_for_additional_attrs(additional_attrs,f)
  	html_str = ''
  	additional_attrs.each do |attr|
  	  html_str << "<div class='feild'>"
  	  html_str << f.label(attr.name)
  	  html_str << "<br/>"
  	  input_type = get_input_type_for_attr(attr,f)
  	  html_str << input_type
  	  html_str << "</div>"
  	end
  	html_str.html_safe
  end

  def get_input_type_for_attr(attr,f)
  	case attr.attr_type
  	when 'Integer', 'Float', 'String'
  	  f.text_field attr.name
  	when 'Select Box'
  	  'select'  	  
  	when 'Checkbox'
  	  'check_box'
  	when 'Radio Button'
  	  'radio_button'
  	end
  end
	
end
