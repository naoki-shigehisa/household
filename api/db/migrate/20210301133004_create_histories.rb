class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.integer :user_id
      t.integer :genre_id
      t.integer :price
      t.boolean :sign
      t.string :detail

      t.timestamps
    end
  end
end
