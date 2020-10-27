require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com\

puts "What food?"

food = gets.chomp

url = "https://www.bbcgoodfood.com/search/recipes?q=#{food}"


url_serialized = open(url).read

parsed_document = Nokogiri::HTML(url_serialized)


# CSS SELECTORS

 # => tag_names (h1, p ,a ,h2)
 # => classes .
 # => ids #

search_results = parsed_document.search(".standard-card-new__article-title")


search_results.each do |element|
  p element.text
  p element.attribute('href').value
end
