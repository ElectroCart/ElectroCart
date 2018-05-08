class CreateMicrowaves < ActiveRecord::Migration[5.1]
  def change
    create_table :microwaves do |t|
      t.string :title
      t.string :model_no
      t.string :color
      t.text :description
      t.float :price
      t.string :capacity
      t.string :power
      t.string :weight
      t.references :brands, foreign_key: true
      

      t.timestamps
    end
  end
end
