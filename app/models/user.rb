# frozen_string_literal: true

class User < ApplicationRecord
  has_one :candidate
  has_one :collaborator
  has_many :contacts
  has_many :messages
  validates_presence_of :mail, :token, :role, :last_name, :first_name, :mail_notification, :push_notification

end
