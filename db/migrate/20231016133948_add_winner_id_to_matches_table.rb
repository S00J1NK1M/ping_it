class AddWinnerIdToMatchesTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :winner, foreign_key: {to_table: :users}, null: false
    
  end
end
