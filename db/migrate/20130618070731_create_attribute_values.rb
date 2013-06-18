class CreateAttributeValues < ActiveRecord::Migration
  def change
  	create_table :attributes_values do |t|
      t.integer :additional_attribute_id
      t.integer :owner_id
      t.text	:value

      t.timestamps
    end
  end
end
