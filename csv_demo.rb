require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'



csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, force_quotes: true }



CSV.open(filepath, "a", csv_options) do |csv|
  csv << ["Bintang", "Yellowish", "Indonesia"]
  csv << ["San Miguel", "Clear", "Indonesia"]
end


CSV.foreach(filepath, csv_options) do |beer|

  # ["Edelweiss", "White", "Austria"]

  p "#{beer[0]} is #{beer[1]} and it's origin is #{beer[2]}"
end
