class CreateLaptopDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :laptop_details do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :processor
      t.string :hard_drive
      t.string :ram
      t.string :display
      t.string :usb_ports
      t.string :color
      t.string :shipping_weight
      t.references :brand, foreign_key: true
    

      t.timestamps
    end
  end
end
