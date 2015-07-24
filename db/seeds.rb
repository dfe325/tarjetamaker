# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#1 = adjective
#2 = noun
#3 = verb
#4 = adverb

# Card.create!(front: "el perro", back: "the dog", deck_id: 2)
# Card.create!(front: "grande", back: "big", deck_id: 1)
# Card.create!(front: "llegar", back: "to arrive", deck_id: 3)
# Card.create!(front: "ella", back: "she", deck_id: 1)
# Card.create!(front: "rápido", back: "quickly", deck_id: 4)

Deck.create!(name: "adjectives", user_id: 1)
Deck.create!(name: "nouns", user_id: 1)
Deck.create!(name: "verbs", user_id: 1)
Deck.create!(name: "adverbs", user_id: 1)


# Card.create(front: "poco", back: "a little", user_id: 1)
# Card.create(front: "hola", back: "hello", user_id: 1)
# Card.create(front: "yo", back: "I", user_id: 1)
# Card.create(front: "tú", back: "you", user_id: 1)
# Card.create(front: "él", back: "he", user_id: 1)
# Card.create(front: "ellos", back: "they", user_id: 1)
# Card.create(front: "nosotros", back: "we", user_id: 1)
# Card.create(front: "vosotros", back: "you all", user_id: 1)
# Card.create(front: "nuevo", back: "new", user_id: 1)
# Card.create(front: "viejo", back: "old", user_id: 1)
# Card.create(front: "ser", back: "to be", user_id: 1)
# Card.create(front: "estar", back: "to be", user_id: 1)
# Card.create(front: "dar", back: "to give", user_id: 1)
# Card.create(front: "tomar", back: "to take", user_id: 1)
# Card.create(front: "mucho", back: "a lot", user_id: 1)
# Card.create(front: "comida", back: "food", user_id: 1)
# Card.create(front: "mal", back: "bad", user_id: 1)
# Card.create(front: "el gato", back: "the cat", user_id: 1)
# Card.create(front: "el pájaro", back: "the bird", user_id: 1)



# User.create(email: "abc@def.com")
