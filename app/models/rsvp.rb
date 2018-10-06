# frozen_string_literal: true

class Rsvp < ApplicationRecord
  belongs_to :guest
  validates :guest, presence: true
  validates :is_attending, inclusion: { in: [true, false] }
  validates :needs_accomodation, inclusion: { in: %w[yes_hotel_incisa_single_room yes_hotel_incisa_double_room yes_agriturismo_loppiano no_thank_you] }
end
