require 'rails_helper'

RSpec.describe MeetingRoom, type: :model do
  context 'MeetingRoom model validation' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:how_do_i_get_there) }
    it { should belong_to(:office) }
  end
end
