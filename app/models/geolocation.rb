class Geolocation < ApplicationRecord
  belongs_to :address
  has_many :resting_places
end
