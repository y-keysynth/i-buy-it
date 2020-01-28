class RenameSellerColumnToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :buyer, :seller_id
  end
end
