class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :f_name
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
