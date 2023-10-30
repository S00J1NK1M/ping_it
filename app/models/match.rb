class Match < ApplicationRecord
  belongs_to :organiser, class_name: 'User', foreign_key:"organiser_id", optional: true
  belongs_to :buddy, class_name: 'User', foreign_key:"buddy_id", optional: true
  belongs_to :winner, class_name: 'User', foreign_key:"winner_id", optional: true
end
