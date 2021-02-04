class BusinessField < ApplicationRecord
  has_many :business_titles
  has_many :interview_tips
  has_many :interview_types
end
