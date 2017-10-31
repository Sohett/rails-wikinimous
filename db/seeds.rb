# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "destroying the previous database"

Article.destroy_all

puts "starting to seed"
puts "************************"

15.times do
  article = Article.create(title:Faker::HowIMetYourMother.character ,context: Faker::HowIMetYourMother.quote )
  puts "created #{article.title}"
end

puts "************************"
puts "ended to seed"


# t.string "title"
# t.text "context"
