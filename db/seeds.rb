# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

10.times do
  User.create(
    email: Faker::Internet.email,
    password: '123456789'
  )
end

10.times do
    Institution.create!(
      name: Faker::University.name,
      address: Faker::Address.street_address,
      description: Faker::Lorem.paragraphs(number: 1),
      image_url: Faker::LoremFlickr.image
    )
  end

40.times do
  Course.create(
    professor: Faker::Name.name,
    title: Faker::Educator.course_name,
    description: Faker::Lorem.paragraphs(number: 1),
    subject: Faker::Educator.subject,
    price: Faker::Number.number(digits: 3),
    start_date: Faker::Date.in_date_period,
    end_date: Faker::Date.in_date_period(year: 2023, month: 6),
    rating: [1, 2, 3, 4, 5].sample,
    image_url: Faker::LoremFlickr.image,
    institution_id: rand(2..10)
  )
end
