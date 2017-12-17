class GetlinksController < ApplicationController
  def Home
    require 'open-uri'
    require 'nokogiri'
    doc = Nokogiri::HTML(open('https://www.google.com/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))

    entries = doc.css('img')[0].attr('src')
    @formattedrate = entries
    render template: 'getlinks/Home'
  end
end
