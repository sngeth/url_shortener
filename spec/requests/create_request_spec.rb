require 'rails_helper'

RSpec.describe "new request", type: :request  do
  it "should create a url with original and shortened" do
    post '/new', { original_url: "https://www.google.com" }

    parsed_json = JSON.parse response.body
    expect(parsed_json["original_url"]).to eq "https://www.google.com"
    expect(parsed_json["shortened_url"]).not_to eq nil
  end

  it "should not save shortened url with invalid url" do
    post '/new', { original_url: "not a url" } do

    parsed_json = JSON.parse response.body
    expect(parsed_json["error"]).to eq "Invalid URL"
    end
  end
end
