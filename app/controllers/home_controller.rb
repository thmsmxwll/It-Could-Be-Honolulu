class HomeController < ApplicationController
  def index
    @photos = Photo.order("Created_at DESC").limit(5)
  end

  def about
  end

  def stimulus
  end
end
