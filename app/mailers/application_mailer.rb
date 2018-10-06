# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'Annamária & Lionel <annamaria.and.lionel@gmail.com>'
  layout 'mailer'
end
