require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)

my_hash = JSON.parse(serialized_beers)

my_hash["beers"] << {"name" => "Bintang", "appearance" => "Yellowish", "origin" => "Indonesia"}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(my_hash))
end

# p my_hash["beers"]

# #  Beer looks like
# # {"name"=>"Edelweiss", "appearance"=>"White", "origin"=>"Austria"}

# my_hash["beers"].each do |beer_hash|
#   puts "#{beer_hash["name"]} is #{beer_hash["appearance"]} and it's origin is #{beer_hash["origin"]}"
# end
