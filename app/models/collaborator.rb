class Collaborator < ApplicationRecord
  belongs_to :user
  belongs_to :business_title
  belongs_to :office

  has_one :ambassador
  has_many :appointments
end
