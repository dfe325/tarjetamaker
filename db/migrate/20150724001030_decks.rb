class Decks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
    end
  end
end
