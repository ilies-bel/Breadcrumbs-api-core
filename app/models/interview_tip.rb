class InterviewTip < ApplicationRecord
  validates_presence_of :title , :description , :ranking
end
