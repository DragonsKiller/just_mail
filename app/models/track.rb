class Track < ApplicationRecord
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
  before_create :tracker

  def tracker
    self.track_info = "Mail № #{self.track_number}\n"
    page = Nokogiri::HTML(open("http://www.trackitonline.ru/?tn=#{self.track_number}"))
    data = Hash.new
    page.css("div.media").each do |data|
      title = data.css("b").text
      date = data.css("p")[0].text
      post_office = data.css("p")[1].text
      self.track_info += date + "; " + post_office + "; " + title + "\n"
    end
  end
end
