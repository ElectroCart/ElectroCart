class AddApproveToSeller < ActiveRecord::Migration[5.1]
  def change
    add_column :sellers, :approve, :boolean, :default => false
  end
end
