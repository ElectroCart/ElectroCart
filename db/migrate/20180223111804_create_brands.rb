class CreateBrands < ActiveRecord::Migration[5.1]
  def up
    create_table :brands do |t|
      t.string :brand_name

      t.timestamps
    end
  end

  def down
    drop_table :brands
  end
end
