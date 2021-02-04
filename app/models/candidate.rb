class Candidate < ApplicationRecord
  belongs_to :user
  belongs_to :interview_process
  belongs_to :business_title

  has_many :appointments
end
