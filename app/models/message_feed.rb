class MessageFeed < ApplicationRecord
  has_one :ambassador
  has_many :messages
end
