class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :name
      t.string :equipment
      t.integer :match_status
      t.references :organiser, foreign_key: {to_table: :users}, null: false
      t.references :buddy, foreign_key: {to_table: :users}, null: false
      t.references :pingpong_table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
