class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :c_name
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
