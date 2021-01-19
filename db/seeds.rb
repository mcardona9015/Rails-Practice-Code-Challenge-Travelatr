# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do 
  Destination.create({
    name: Faker::Address.city,
    country: Faker::Address.country
  })
end


10.times do
  blogger = Blogger.create({
    name: Faker::Name.name,
    bio: Faker::Hipster.paragraph,
    age: (13..100).to_a.sample
  })

  (2..6).to_a.sample.times do 
    Post.create({
      title: Faker::Hipster.sentence(word_count: 3),
      content: Faker::Hipster.paragraphs(number: 4).join,
      likes: 0,
      blogger: blogger,
      destination: Destination.all.sample
    })
  end
end
