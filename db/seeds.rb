# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Category.destroy_all
Card.destroy_all

sunjet = User.create(username: "SunJet", password_digest: "password123", email: "sunjet@sunjet.com")
billy = User.create(username: "Billy", password_digest: "password123", email: "billy@billy.com")

react = Category.create(name: "React", user_id: sunjet.id)
rails = Category.create(name: "Rails", user_id: billy.id)
japanese = Category.create(name: "Japanese", user_id: sunjet.id)
korean = Category.create(name: "Korean", user_id: billy.id)

react_1 = Card.create(term: "component", definition: "a cool tool", is_starred: false, category_id: react.id)
react_2 = Card.create(term: "props", definition: "properties for a component", is_starred: true, category_id: react.id)
rails_1 = Card.create(term: "controller", definition: "decides what's what", is_starred: false, category_id: rails.id)
rails_2 = Card.create(term: "ruby", definition: "the language", is_starred: true, category_id: rails.id)
japanese_1 = Card.create(term: "あ", definition: "a", is_starred: false, category_id: japanese.id)
japanese_2 = Card.create(term: "た", definition: "ta", is_starred: true, category_id: japanese.id)
korean_1 = Card.create(term: "hangol", definition: "the alphabet", is_starred: false, category_id: korean.id)
korean_2 = Card.create(term: "annyeonghaseyo", definition: "hello", is_starred: true, category_id: korean.id)