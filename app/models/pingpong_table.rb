class PingpongTable < ApplicationRecord
  has_many :reservation
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
