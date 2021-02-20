class InterviewType < ApplicationRecord
  belongs_to :business_field
  has_many :interview_milestones

  validates_presence_of :title, :description,
                        :estimated_time_length,
                        :min_time_before_next
end
