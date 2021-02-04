class BusinessTitle < ApplicationRecord
  belongs_to :business_field

  has_one :candidate
  has_one :collaborator
end
