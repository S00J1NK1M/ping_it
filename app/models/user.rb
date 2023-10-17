class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :matches_as_organiser, class_name: "Match", foreign_key: "organiser_id"
  has_many :matches_as_buddy, class_name: "Match", foreign_key: "buddy_id"
  has_many :matches_as_winner, class_name: "Match", foreign_key: "winner_id"
  has_many :pingpong_tables, through: :reservations
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
