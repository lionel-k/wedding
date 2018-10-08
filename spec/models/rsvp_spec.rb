require 'rails_helper'

RSpec.describe Rsvp, type: :model do
  describe 'Associations' do
    it { should belong_to(:guest) }
  end

  describe 'Validations' do
    it { should validate_inclusion_of(:needs_accomodation).in_array(Rsvp::ACCOMODATION_VALUES) }
  end
end
