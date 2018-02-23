class CreateCategories < ActiveRecord::Migration[5.1]
  def up
    create_table :categories do |t|
      t.string :category_name

      t.timestamps
    end
  end
  def down
    drop_table :categories
  end
end
