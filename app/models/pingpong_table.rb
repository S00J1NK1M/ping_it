class PingpongTable < ApplicationRecord
    has_many :matches 
    has_many :reservation
end
