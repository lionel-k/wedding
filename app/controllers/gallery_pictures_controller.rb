class GalleryPicturesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @gallery = GalleryPicture.all
    @title = "Gallery - Annamária and Lionel"
  end
end
