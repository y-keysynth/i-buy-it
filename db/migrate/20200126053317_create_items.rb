class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string     :title,   null: false
      t.text       :details, null: false
      t.integer    :price,   null: false
      t.references :user,    foreign_key: true

      t.timestamps
    end
  end
end
