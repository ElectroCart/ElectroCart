class CreateMobileDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :mobile_details do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :display
      t.string :front_cam
      t.string :back_cam
      t.string :connectivity
      t.string :color
      t.string :memory
      t.string :platform
      t.string :operating_system
      t.string :shipping_weight
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
