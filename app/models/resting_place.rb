class RestingPlace < ApplicationRecord
  belongs_to :office
  belongs_to :geolocation

  validates_presence_of :link, :description  , :title , :ranking , :created_at , :updated_at
end
