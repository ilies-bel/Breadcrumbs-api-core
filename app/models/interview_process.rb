class InterviewProcess < ApplicationRecord
  has_one :candidate
  has_many :interview_milestones
end
