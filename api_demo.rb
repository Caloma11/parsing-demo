require 'json'
require 'open-uri' # allows me to open urls from the web

# TODO - Let's fetch name and bio from a given GitHub username

puts "What is your username?"

username = gets.chomp

url = "https://api.github.com/users/#{username}"


url_serialized = open(url).read


user = JSON.parse(url_serialized)

p user
#
# puts "Hello, #{user["name"]}. Your id is #{user["id"]}"
