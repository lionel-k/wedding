class Rsvp < ApplicationRecord
  belongs_to :guest
  validates :guest, presence: true
  validates :is_attending, inclusion: { in: [ true, false ] }
  validates :needs_accomodation, inclusion: { in: [ true, false ] }
end
