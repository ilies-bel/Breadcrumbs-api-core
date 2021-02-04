class RestingPlace < ApplicationRecord
  belongs_to :office
  belongs_to :geolocation

  validates_presence_of :link, :office_id , :description , :geolocation_id , :title , :ranking
end
