class ChangeCityToAddressInUsersModel < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :city, :address
  end
end
