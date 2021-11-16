# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "..🌰..Seeding Database..🌰.."

     10.times do
        user = User.create(
        username: Faker::Name.middle_name,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.safe_email,
        phone: Faker::PhoneNumber.phone_number,
        password: "1234",
        avatar_url: Faker::Avatar.image,
        team_id: Faker::Number.between(from: 1, to: 4)
        )
     end

     50.times do
        ticket = Ticket.create(
        name: Faker::Hipster.sentence(word_count: 3),
        category: Faker::Number.between(from: 1, to: 5),
        department: Faker::Number.between(from: 1, to: 4),
        priority: Faker::Number.between(from: 1, to: 3),
        issue_description: Faker::Lorem.paragraph,
        submitted_by: Faker::Number.between(from: 1, to: 10),
        image_url: Faker::Fillmurray.image,
        creator: Faker::Number.between(from: 1, to: 10),
        comment_id: Faker::Number.between(from: 1, to: 75),
        created: Faker::Date.between(from: 14.days.ago, to: Date.today)
        )
     end

     75.times do
        comment = Comment.create(
        text: Faker::ChuckNorris.fact,
        created: Faker::Date.between(from: 14.days.ago, to: Date.today),
        user_id: Faker::Number.between(from: 1, to: 10)
        )
     end

     4.times do
        team = Team.create(
        lead: Faker::Number.between(from: 1, to: 10),
        department: Faker::Number.between(from: 1, to: 4)
        )
     end

     50.times do
        UsersTicket.create(
        ticket_id: Faker::Number.between(from: 1, to: 30),
        user_id: Faker::Number.between(from: 1, to: 10)
        )
     end

puts "🌱🌱🌱 Seeding Complete 🌱🌱🌱"
