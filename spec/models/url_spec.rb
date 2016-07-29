require 'rails_helper'

RSpec.describe Url, type: :model do
  it "requires a valid original url" do
    url = Url.create
    expect(url).not_to be_valid
  end

  it "can generate a shorted url" do
    original_url = "http://www.example.com"
    url = Url.create original_url: original_url
    expect(url.shorted_url).not_to eq nil
  end
end
