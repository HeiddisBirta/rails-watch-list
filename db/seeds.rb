# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

10.times do
  Movie.create!({
    title: Faker::Movie.title,
    rating: rand(1..5),
    overview: Faker::Movie.quote,
    poster_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.britannica.com%2Fscience%2Fflower&psig=AOvVaw2xyC5NtSgUb7ZHgr6otxVt&ust=1708698481480000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCPC85IGUv4QDFQAAAAAdAAAAABAG"

  })
end
