module UsersHelper

  def generate_feilds_for_additional_attrs(additional_attrs)
  	html_str = ''
  	additional_attrs.each do |attr|
  	  html_str << "<div class='feild'>"
  	  html_str << label_tag(attr.name)
  	  html_str << "<br/>"
  	  input_type = get_input_type_for_attr(attr)
  	  html_str << input_type
  	  html_str << "</div>"
  	end
  	html_str.html_safe
  end

  def get_input_type_for_attr(attr)
  	case attr.attr_type
  	when 'Integer', 'Float', 'String'
  	  text_field_tag attr.name
  	when 'Select Box'
  	  'select'  	  
  	when 'Checkbox'
  	  'check_box'
  	when 'Radio Button'
  	  'radio_button'
  	end
  end
	
end
