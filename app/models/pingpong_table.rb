class PingpongTable < ApplicationRecord
  has_many :matches 
  has_many :reservation
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
