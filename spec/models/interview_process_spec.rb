require 'rails_helper'

RSpec.describe InterviewProcess, type: :model do
  context 'InterviewProcess model validation' do
    it { should validate_presence_of(:process_name) }
  end
end
