# frozen_string_literal: true

class Guest < ApplicationRecord
  validates :first_name, :last_name, :email, :dear, :greeting, :language, presence: true

  has_one :rsvp, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
