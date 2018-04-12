require 'rubygems'
require 'nokogiri'
require 'open-uri'

def money
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

   cur_rate = page.css('a.price').text
   cur_name = page.css('a.currency-name-container').text
   bit = Hash.new { |cur_name,cur_rate| cur_name[cur_rate] }
     puts bit
   end
end

money
