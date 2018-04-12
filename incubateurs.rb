require 'rubygems'
require 'nokogiri'
require 'open-uri'



def incubateur
  doc = Nokogiri::HTML(open("http://www.penser-entrepreunariat.fr/?page_id=120"))

  doc.xpath('//*[@id="post-120"]/ul').each do |node|
     puts node.text
   end
 end

incubateur
