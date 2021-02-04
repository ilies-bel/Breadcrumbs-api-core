class Candidate < ApplicationRecord
  belongs_to :user
  belongs_to :interview_process
  belongs_to :business_title

  has_many :appointments

  validates_presence_of  :created_at , :updated_at
end
