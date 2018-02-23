class CreateBrandCategories < ActiveRecord::Migration[5.1]
  def up
    create_table :brand_categories do |t|
      t.integer "brand_id"
      t.integer "category_id"
      t.timestamps
    end
    add_index("brand_categories", ["brand_id", "category_id"])
  end

  def down
    drop_table :brand_categories
  end
end
