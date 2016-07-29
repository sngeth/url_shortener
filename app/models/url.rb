class Url < ActiveRecord::Base
  validates_presence_of :original_url

  def shorted_url
    self.shorted_url = (0...8).map { (65 + rand(26)).chr }.join
  end
end
