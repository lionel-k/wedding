class RsvpsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @rsvp = Rsvp.new
    @title = "RSVP - Annamária and Lionel"
  end

  def create
    existing_rsvp = Rsvp.find_by_guest_id(params[:rsvp][:guest_id])

    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      existing_rsvp.destroy if existing_rsvp
      # RsvpMailer.confirmation(@rsvp.guest).deliver_later
      redirect_to root_path
      # redirect_to new_rsvp_path
    else
      render 'rsvps/new'
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:guest_id, :is_attending, :needs_accomodation, :additionals, :consideration)
  end
end
