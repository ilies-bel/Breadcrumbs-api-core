class Collaborator < ApplicationRecord
  belongs_to :user
  belongs_to :business_title
  belongs_to :office

  has_one :ambassador
  has_many :appointments

  validates_presence_of  :business_title, :updated_at , :created_at
end
