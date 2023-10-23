class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :pingpong_table, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :datetime

      t.timestamps
    end
  end
end
