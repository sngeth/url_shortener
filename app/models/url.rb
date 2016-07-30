class Url < ActiveRecord::Base
  validates_presence_of :original_url
  validates_format_of :original_url, with: URI::regexp(%w(http https))

  before_create :generate_shortened_url

  def generate_shortened_url
    self.shorted_url = (0...8).map { (65 + rand(26)).chr }.join
  end
end
