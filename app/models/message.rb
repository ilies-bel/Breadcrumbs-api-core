class Message < ApplicationRecord
  belongs_to :user
  belongs_to :message_feed

  validates_presence_of :message_feed , :message_feed_id, :user_id , :content
end
