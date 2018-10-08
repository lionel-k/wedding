require 'rails_helper'

RSpec.describe Guest, type: :model do
  describe 'Associations' do
    it { is_expected.to have_one(:rsvp) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:dear) }
    it { should validate_presence_of(:language) }
    it { should validate_presence_of(:greeting) }
  end
end
