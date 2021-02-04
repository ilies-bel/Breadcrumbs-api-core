class InterviewProcess < ApplicationRecord
  has_one :candidate
  has_many :interview_milestones

  validates_presence_of :process_name , :created_at , :updated_at
end
