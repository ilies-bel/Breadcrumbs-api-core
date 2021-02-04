require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User model validation' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:mail) }
    it { should validate_presence_of(:role) }
    it { should validate_presence_of(:push_notification) }
    it { should validate_presence_of(:mail_notification) }
    it { should validate_presence_of(:token) }
  end
end
