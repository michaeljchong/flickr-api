class StaticPagesController < ApplicationController
  def index
    @flickr = Flickr.new
    if params[:user_id].present?
      @photos = @flickr.photos.search user_id: params[:user_id]
    end
  end
end
