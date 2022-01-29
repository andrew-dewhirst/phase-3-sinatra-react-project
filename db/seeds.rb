puts "🌱 Seeding spices..."

# Make 10 users
10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

# Make 50 trips
50.times do
  # create a trip with random data
  trip = Trip.create(location: Faker::Nation.capital_city)
  
  # create between 1 and 5 reviews for each trip
  rand(1..5).times do
    # get a random user for every review
    # https://stackoverflow.com/a/25577054
    user = User.order('RANDOM()').first

    # A review belongs to a trip and a user, so we must provide those foreign keys
    Review.create(
      activities_completed: Faker::Hobby.activity,
      comments: Faker::Lorem.sentence,
      rating: rand(1..5),
      date_arrived: Faker::Date.between(from: '2020-01-01', to: '2020-12-31'),
      date_departed: Faker::Date.between(from: '2021-01-01', to: '2021-12-31'),
      trip_id: trip.id,
      user_id: user.id
    )
  end
end

puts "✅ Done seeding!"
