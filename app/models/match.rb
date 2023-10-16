class Match < ApplicationRecord
  belongs_to :organiser, class_name: 'User'
  belongs_to :buddy, class_name: 'User'
  belongs_to :pingpong_table
end
