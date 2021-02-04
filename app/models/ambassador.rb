class Ambassador < ApplicationRecord
  belongs_to :collaborator
  belongs_to :message_feed

  validates_presence_of :catch_phrase, :description ,  :created_at , :updated_at
end
