class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_attachment :users, :photo
  	add_column :users, :address, :text
  	add_column :users, :work_info, :string
  end
end
