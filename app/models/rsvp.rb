# frozen_string_literal: true

class Rsvp < ApplicationRecord
  ACCOMODATION_VALUES = %w[
    yes_hotel_incisa_single_room
    yes_hotel_incisa_double_room
    yes_agriturismo_loppiano no_thank_you
  ].freeze
  belongs_to :guest
  validates :needs_accomodation, inclusion: ACCOMODATION_VALUES
end
