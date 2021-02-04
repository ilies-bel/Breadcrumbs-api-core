require 'rails_helper'

RSpec.describe Candidate, type: :model do
  context 'Candidate model validation' do
    it { should belong_to(:user)}
    it { should belong_to(:interview_process)}
    it { should belong_to(:business_title)}

    it { should have_many(:appointments)}


    it { should validate_presence_of(:updated_at) }
    it { should validate_presence_of(:created_at) }
  end
end
