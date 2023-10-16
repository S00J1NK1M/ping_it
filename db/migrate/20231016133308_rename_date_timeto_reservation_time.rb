class RenameDateTimetoReservationTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :datetime, :reservation_time 
  end
end
