class Guest < ApplicationRecord
  has_one :rsvp

  def full_name
    "#{first_name} #{last_name}"
  end
end
