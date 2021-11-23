# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "uri"

Product.delete_all
Customer.delete_all

25.times do
  p = Product.create(name:        Faker::Commerce.unique.product_name,
                     price: rand(5000..100_000).to_i,
                     description: Faker::Hipster.sentence(word_count: rand(4..8)))

  puts "Creating #{p.name}"
  end

  25.times do
    c = Customer.create(username:        Faker::Internet.user.username,
                       password: "password",
                       province: "Manitoba")

    puts "Creating #{c.name}"
    end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'parbjot@test.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

