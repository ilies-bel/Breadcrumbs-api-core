require 'rails_helper'

RSpec.describe InterviewMilestone, type: :model do
  context 'model' do

    it { should belong_to(:interview_process) }
    it { should belong_to(:interview_type) }
    it { should have_one(:appointment) }

    it { should validate_presence_of(:milestone_name) }
    it { should validate_presence_of(:created_at) }
    it { should validate_presence_of(:updated_at) }
  end
end
