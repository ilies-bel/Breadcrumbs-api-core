class Appointment < ApplicationRecord
  belongs_to :interview_milestone
  belongs_to :candidate
  belongs_to :meeting_room
end
