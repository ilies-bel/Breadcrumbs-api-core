class RestingPlace < ApplicationRecord
  belongs_to :office
  belongs_to :geolocation
end
