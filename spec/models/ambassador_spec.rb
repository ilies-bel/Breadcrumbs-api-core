require 'rails_helper'

RSpec.describe Ambassador, type: :model do
  context 'Theme model validation' do
    it { should validate_presence_of(:catch_phrase) }
    it { should validate_presence_of(:description) }
  end
end
