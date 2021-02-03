class Ambassador < ApplicationRecord
  belongs_to :collaborator
  belongs_to :message_feed
end
