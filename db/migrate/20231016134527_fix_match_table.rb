class FixMatchTable < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :match_time, :datetime
    add_column :matches, :location, :string 
    remove_column :matches, :pingpong_table_id, :references
  end
end
