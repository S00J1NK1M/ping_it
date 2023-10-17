class AddCoordinatesToPingpongTables < ActiveRecord::Migration[7.0]
  def change
    add_column :pingpong_tables, :latitude, :float
    add_column :pingpong_tables, :longitude, :float
  end
end
