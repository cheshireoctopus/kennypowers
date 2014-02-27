  class QuotesController < ApplicationController

  require 'open-uri'

  def index

    doc = Nokogiri::HTML(open('http://www.powerisms.com/'))

    quote_array = []
    doc.css(".powerism").each do |quote|
      quote_array.push quote
    end

    @quotes = quote_array

  end
end
