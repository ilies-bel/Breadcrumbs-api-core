require 'rails_helper'

RSpec.describe Qualifier, type: :model do
  context 'Qualifier model validation' do
    it { should validate_presence_of(:qualifier_name) }
    it { should validate_presence_of(:select_count) }
    it { should validate_presence_of(:updated_at) }
    it { should validate_presence_of(:created_at) }
  end
end
