# frozen_string_literal: true

class RsvpMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rsvp_mailer.confirmation.subject
  #
  def confirmation(guest)
    @guest = guest

    mail(
      # to:       "kubligen3@yahoo.fr",
      to: @guest.email,
      subject: "[#{@guest.first_name} #{@guest.last_name}] #{t('.confirmation_email')}"
    )
  end
end
