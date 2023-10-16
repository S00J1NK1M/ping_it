class Reservation < ApplicationRecord
  belongs_to :pingpong_table
  belongs_to :user
end
