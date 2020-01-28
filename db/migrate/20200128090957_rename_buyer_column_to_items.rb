class RenameBuyerColumnToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :buyer_id, :buyer
  end
end
