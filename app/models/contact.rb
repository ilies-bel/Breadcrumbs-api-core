class Contact < ApplicationRecord
  belongs_to :user

  validates_presence_of :title , :link, :user_id , :social_network , :created_at , :updated_at
end
