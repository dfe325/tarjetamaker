# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Card.create(word_text: "el perro", meaning_text: "the dog", user_id: 1)
Card.create(word_text: "chevre", meaning_text: "cool", user_id: 1)
Card.create(word_text: "llegar", meaning_text: "to arrive", user_id: 1)
Card.create(word_text: "ella", meaning_text: "she", user_id: 1)
Card.create(word_text: "mucho", meaning_text: "a lot", user_id: 1)

# User.create(email: "abc@def.com")
