class CreateFridges < ActiveRecord::Migration[5.1]
  def change
    create_table :fridges do |t|
      t.string :title
      t.string :model_no
      t.float :price
      t.text :description
      t.string :power
      t.string :capacity
      t.string :voltage
      t.references :brands, foreign_key: true
      

      t.timestamps
    end
  end
end
