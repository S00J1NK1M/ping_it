class ChangeEquipmentToBeBooleanInMatches < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :equipment
    add_column :matches, :equipment, :boolean
  end
end
