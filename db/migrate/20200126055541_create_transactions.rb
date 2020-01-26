class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :item, foreign_key: true
      t.references :seller, foreign_key: { to_table: :users }
      t.references :buyer, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
