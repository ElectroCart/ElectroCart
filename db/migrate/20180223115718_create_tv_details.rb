class CreateTvDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :tv_details do |t|
      t.string :name
      t.string :display
      t.string :screen_type
      t.string :usb_supported
      t.string :color
      t.string :description
      t.string :shipping_weight
      t.string :connectivity
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
