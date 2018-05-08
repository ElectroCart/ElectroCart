class CreateCameras < ActiveRecord::Migration[5.1]
  def change
    create_table :cameras do |t|
      t.string :title
      t.string :resolution
      t.string :model_no
      t.string :storage_type
      t.string :mega_pixel
      t.string :display_size
      t.string :battery
      t.text :description
      t.string :weight
      t.float :price
      t.references :brands, foreign_key: true
      

      t.timestamps
    end
  end
end
