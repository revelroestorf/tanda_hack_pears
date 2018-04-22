class AddToPairings < ActiveRecord::Migration[5.0]
  def change
    add_column :pairings, :admin_reveal, :boolean
  end
end
