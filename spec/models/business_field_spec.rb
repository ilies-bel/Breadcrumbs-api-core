require 'rails_helper'

RSpec.describe BusinessField, type: :model do
  context 'model' do
    it { should have_many(:business_titles)}
    it { should have_many(:interview_types)}


    it { should validate_presence_of(:field_name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:created_at) }
    it { should validate_presence_of(:updated_at) }
  end
end
