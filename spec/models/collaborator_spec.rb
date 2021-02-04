require 'rails_helper'

RSpec.describe Collaborator, type: :model do
  context 'model' do
    it { should belong_to(:user)}
    it { should belong_to(:business_title)}
    it { should belong_to(:office)}

    it { should have_one(:ambassador)}
    it { should have_many(:appointments)}

    it { should validate_presence_of(:business_title) }
    it { should validate_presence_of(:created_at) }
    it { should validate_presence_of(:updated_at) }
  end
end
