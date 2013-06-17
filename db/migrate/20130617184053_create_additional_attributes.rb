class CreateAdditionalAttributes < ActiveRecord::Migration
  def change
    create_table :additional_attributes do |t|
      t.string :name
      t.string :attr_class
      t.string :type

      t.timestamps
    end
  end
end
