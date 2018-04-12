require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage
  doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))

  doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
     puts node.text
   end
 end


 get_the_email_of_a_townhal_from_its_webpage


 def get_all_the_urls_of_val_doise_townhalls
   page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

  new = page.css('a.lientxt')
  new.each{|link| puts " http://annuaire-des-mairies.com#{link['href']}" }


 end
 get_all_the_urls_of_val_doise_townhalls



=begin

def get_the_email_of_a_townhal_from_its_webpage
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
    news_links = page.css("td").select{|link| link['data-category'] == "news"}
    news_links.each{|link| puts link['href'] }
=end
