require 'rails_helper'

RSpec.describe "GET goto_original_url", type: :request do
  describe "#goto_original_url" do
    it "should redirect a shortened url to original" do
      @url = Url.create original_url: "http://www.example.com"
      get '/', shortened_url: @url.shorted_url
      expect(response).to redirect_to(@url.original_url)
    end
  end
end
