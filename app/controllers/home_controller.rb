class HomeController < ApplicationController
  def new
    @url = Url.create original_url: params[:original_url]
    render json: url
  end

  def goto_original_url
    @url = Url.find_by_shorted_url params[:shortened_url]
    redirect_to @url.original_url
  end

  private
  def url
    if @url.valid?
    { original_url: @url.original_url,
      shortened_url: @url.shorted_url }
    else
      { error: "Invalid URL" } if @url.valid?
    end
  end
end
