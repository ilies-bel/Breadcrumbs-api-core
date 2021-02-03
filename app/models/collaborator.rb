class Collaborator < ApplicationRecord
  belongs_to :user
  belongs_to :business_title
  belongs_to :office
end
