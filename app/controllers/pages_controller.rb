class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :rsvp, :gallery]

  def home
  end

  def rsvp
  end

  def gallery
  end

end
