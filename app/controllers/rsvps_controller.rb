class RsvpsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :index]

  def index
    @all_attending = Rsvp.where(is_attending: true).includes(:guest)
    @all_not_attending = Rsvp.where(is_attending: false).includes(:guest)
  end

  def new
    @rsvp = Rsvp.new
    @title = "RSVP - Annamária and Lionel"
  end

  def create
    existing_rsvp = Rsvp.find_by_guest_id(params[:rsvp][:guest_id])

    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      existing_rsvp.destroy if existing_rsvp
      RsvpMailer.confirmation(@rsvp.guest).deliver_later
      flash[:notice] = "#{@rsvp.guest.first_name}, #{t('rsvp_mailer.confirmation.thanks_for_the_confirmation')}"
      redirect_to root_path
    else
      render 'rsvps/new'
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:guest_id, :is_attending, :needs_accomodation, :additionals, :consideration)
  end
end
