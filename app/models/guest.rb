# frozen_string_literal: true

class Guest < ApplicationRecord
  has_one :rsvp, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
