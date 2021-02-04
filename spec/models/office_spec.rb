require 'rails_helper'

RSpec.describe Office, type: :model do
  context 'model' do
    it { should belong_to(:address) }
    it { should have_many(:collaborators) }
    it { should have_many(:resting_places) }
    it { should have_many(:meeting_rooms) }

    it { should validate_presence_of(:is_headquarters) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:created_at) }
    it { should validate_presence_of(:updated_at) }

  end
end
