class CreatePingpongTables < ActiveRecord::Migration[7.0]
  def change
    create_table :pingpong_tables do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :category
      t.boolean :availability

      t.timestamps
    end
  end
end
