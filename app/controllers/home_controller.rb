class HomeController < ApplicationController
  def index
    @photos = Photo.order("Created_at DESC")
  end

  def about
  end

  def stimulus
  end
end
