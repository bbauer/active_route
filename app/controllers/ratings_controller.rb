class RatingsController < ApplicationController
  def rate
    rating = Rating.new(params[:rating])
    rating.save
    redirect_to :back
  end
end
