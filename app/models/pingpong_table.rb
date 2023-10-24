class PingpongTable < ApplicationRecord
  has_many :reservation
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
