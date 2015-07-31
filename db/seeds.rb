require 'csv'

file = File.read("spanish-english-seed-file.csv")
csv = CSV.parse(file, headers: true, header_converters: :symbol)

csv.each do |row|
  id = row[:id]
  front = row[:front]
  flip = row[:flip]
  deck_id = row[:deck_id].to_i
  # name = row[:name]
  # user_id = row[:user_id]

  puts "Creating id with integer -- #{id}"
  puts "Creating front with text of -- #{front}"
  puts "Creating flip side with text of -- #{flip}"
  puts "Creating deck_id with integer -- #{deck_id}"

  card = Card.find_or_create_by!(id: id, front: front, flip: flip, deck_id: deck_id)
  card.save!

  # puts "Creating deck with name of -- #{name} and user_id of -- #{user_id}"

  deck1 = Deck.find_or_create_by!(id: 1, name: "adjectives", user_id: 1)
  deck2 = Deck.find_or_create_by!(id: 2, name: "nouns", user_id: 1)
  deck3 = Deck.find_or_create_by!(id: 3, name: "verbs", user_id: 1)
  deck4 = Deck.find_or_create_by!(id: 4, name: "adverbs", user_id: 1)
  deck1.save!
  deck2.save!
  deck3.save!
  deck4.save!
end
