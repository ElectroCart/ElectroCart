class AddColumnsToSellers < ActiveRecord::Migration[5.1]
  def change
    add_column :sellers, :first_name, :string
    add_column :sellers, :last_name, :string
    add_column :sellers, :primary_cell, :string
    add_column :sellers, :secondary_cell, :string
    add_column :sellers, :residential_address, :string
    add_column :sellers, :shop_address, :string
    add_column :sellers, :gender, :string
    add_column :sellers, :DOB, :date
  end
end
