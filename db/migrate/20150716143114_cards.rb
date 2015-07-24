class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :front, null: false
      t.string :back, null: false
      t.integer :deck_id, null: false
    end
  end
end
