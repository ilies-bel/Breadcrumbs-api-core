class InterviewTip < ApplicationRecord
  validates_presence_of :title , :description , :created_at , :updated_at , :ranking
end
