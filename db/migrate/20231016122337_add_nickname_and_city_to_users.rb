class AddNicknameAndCityToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :city, :string
  end
end
