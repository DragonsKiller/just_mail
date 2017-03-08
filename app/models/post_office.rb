class PostOffice < ApplicationRecord
  require 'rubygems'
  require 'mechanize'
  require 'open-uri'
  require 'nokogiri'
  before_create :post_office_finder

  def post_office_finder
    mechanize = Mechanize.new
    page = mechanize.get('http://belindex.5balov.net/')

    form = page.form()
    form.text = self.postcode
    page = form.submit
    link = page.links[1]

    page = Nokogiri::HTML(open("#{link.uri}"))
    contact_data  = page.css("p")[0].text
    addresses = page.css("p")[1].text
    self.post_office_info = "#{contact_data} \n#{addresses}"

  end
end
