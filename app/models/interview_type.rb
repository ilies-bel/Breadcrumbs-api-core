class InterviewType < ApplicationRecord
  belongs_to :business_field
  has_many :interview_milestones
  validates_presence_of :title , :description , :business_field_id , :estimated_time_length , :min_time_before_next , :created_at , :updated_at
end
