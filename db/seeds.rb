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
        )
     end

     50.times do
        ticket = Ticket.create(
        name: Faker::Hipster.sentence(word_count: 3),
        type: Faker::Number.between(1,5),
        department: Faker::Number.between(1, 4),
        priority: Faker::Number.between(1, 3),
        issue_description: Faker::Lorem.paragraph,
        submitted_by: Faker::Number.between(1, 10),
        image_url: Faker::Fillmurray.image,
        creator_id: Faker::Number.between(1, 10),
        comment_id: Faker::Number.between(1, 75),
        created_on: Faker::Date.between(14.days.ago, Date.today),
        )
     end

     75.times do
        comment = Comment.create(
        text: Faker::ChuckNorris.fact,
        created_on: Faker::Date.between(14.days.ago, Date.today),
        creator_id: Faker::Number.between(1, 10),
        )
     end

     4 times do
        team = Team.create(
        lead: Faker::Number.between(1, 10),
        department: Faker::Number.between(1, 4),
        )
     end

     50.times do
        UsersTickets.create(
        ticket_id: Faker::Number.between(1, 30),
        user_id: Faker::Number.between(1, 10),
        )
     end

puts "🌱🌱🌱 Seeding Complete 🌱🌱🌱"
