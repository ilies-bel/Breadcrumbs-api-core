require 'rails_helper'

RSpec.describe InterviewProcess, type: :model do
  context 'model' do
    it { should have_one(:candidate)}
    it { should have_many(:interview_milestones)}

    it { should validate_presence_of(:process_name) }
    it { should validate_presence_of(:created_at) }
    it { should validate_presence_of(:updated_at) }
  end
end
