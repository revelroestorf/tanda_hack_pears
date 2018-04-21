class CreatePairings < ActiveRecord::Migration[5.0]
  def change
    create_table :pairings do |t|
      t.integer :user1
      t.integer :user2
      t.boolean :user1reveal
      t.boolean :user2reveal

      t.timestamps
    end
  end
end
