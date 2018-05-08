class CreateAcs < ActiveRecord::Migration[5.1]
  def change
    create_table :acs do |t|
      t.string :title
      t.string :model_no
      t.text :description
      t.string :capacity
      t.float :price
      t.string :weight
      t.string :color
      t.references :brands, foreign_key: true
      
      t.timestamps
    end
  end
end
