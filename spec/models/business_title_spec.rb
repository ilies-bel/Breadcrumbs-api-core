require 'rails_helper'

RSpec.describe BusinessTitle, type: :model do
  context 'model validation' do
    it { should belong_to(:business_field)}
    it { should have_one(:candidate)}
    it { should have_one(:collaborator)}


    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:created_at) }
    it { should validate_presence_of(:updated_at) }
  end
end
