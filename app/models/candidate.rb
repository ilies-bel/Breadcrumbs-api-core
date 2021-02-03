class Candidate < ApplicationRecord
  belongs_to :user
  belongs_to :interview_processe
  belongs_to :business_title
end
