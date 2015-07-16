class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :word_text, null: false
      t.string :meaning_text, null: false
      t.integer :user_id, null: false
    end
  end
end
