class RemoveColumnInReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :reservation_time
  end
end
