require 'getter_setter'

class User < ActiveRecord::Base
  include GetterSetter
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :photo, :address, :work_info

  has_attached_file :photo, :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      				:url => "/system/:attachment/:id/:style/:filename", 
      				:styles => {:thumb=> "50x50#",
                                :small => "150x150>",
                                :medium => "300x300>",
                                :large => "400x400>"
                               }

  has_many :attribute_values

  has_many :family_members, :class_name => "User"
  has_many :friends, :class_name => "User"
  has_many :business_members, :class_name => "User"
  
  #getters_setters_for_new_attrs(self.name, @current_user.try(:id))

end
