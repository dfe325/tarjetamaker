require 'csv'

file = File.read("spanish-english-seed-file.csv")
csv = CSV.parse(file, headers: true, header_converters: :symbol)
count = 0

csv.each do |row|
  id = row[:id]
  front = row[:front]
  flip = row[:flip]
  deck_id = row[:deck_id].to_i
  puts "Creating id with integer -- #{id}"
  puts "Creating front with text of -- #{front}"
  puts "Creating flip side with text of -- #{flip}"
  puts "Creating deck_id with integer -- #{deck_id}"

  card = Card.find_or_create_by!(id: id, front: front, flip: flip, deck_id: deck_id)
  card.save!
end
