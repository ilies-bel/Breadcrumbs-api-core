class InterviewMilestone < ApplicationRecord
  belongs_to :interview_process
  belongs_to :interview_type
end
