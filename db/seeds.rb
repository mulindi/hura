require 'faker'
Faker::Config.locale = 'en'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'testuser@test.com', password: 'testpasswd', password_confirmation: 'testpasswd')

10.times do
  Job.create(title: Faker::Job.title, description: Faker::Lorem.paragraph, avatar: Faker::Company.logo, company: Faker::Company.name, location: Faker::Address.city, apply_url: Faker::Internet.url, job_level: ['Entry', 'Mid', 'Senior', 'Manager', 'Executive'].sample, job_type: ['full-time', 'part-time', 'contract', 'internship', 'volunteer'].sample, user: user)
end
