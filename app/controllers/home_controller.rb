class HomeController < ApplicationController
  def new
    @url = Url.create original_url: params[:original_url]
    render json: {original_url: @url.original_url }
  end
end
