class InterviewMilestone < ApplicationRecord
  belongs_to :interview_process, optional: true
  belongs_to :interview_type, optional: true

  has_one :appointment

  validates_presence_of :milestone_name 
end
