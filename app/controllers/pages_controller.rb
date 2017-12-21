class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :gallery]

  def home
  end

  def gallery
  end

end
