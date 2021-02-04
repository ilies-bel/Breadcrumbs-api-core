class SocialPost < ApplicationRecord

  validates_presence_of :social_network , :created_at , :updated_at ,  :title , :description
  # TODO Add test at next migration

end
