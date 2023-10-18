class AddColumnsToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :reservation_limit, :datetime
    add_column :reservations, :playtime_limit, :datetime
  end
end
