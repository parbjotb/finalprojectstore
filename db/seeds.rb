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
                     # THESE LINES BELOW ALL US TO ADD IMAGES TO EACH PRODUCT
                     # NEED TO MAKE A CATEGORIES TABLE AND ADD PRODUCTS
                    #  query = URI.encode_www_form_component([product.name, category.name].join(","))
                    #  downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
                    #  product.image.attach(io: downloaded_image, filenameL "m-#{[product.name, category.name].join('-')}.jpg")
                    #  sleep(1)

  puts "Creating #{p.name}"
  end

  25.times do
    c = Customer.create(username:        Faker::Internet.user[:username],
                       password: "password",
                       province: "Manitoba")

    puts "Creating #{c.username}"
    end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
# AdminUser.create!(email: 'parbjot@test.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

