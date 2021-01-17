# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Destroying users'
User.destroy_all
puts 'Destroying projects'
Project.destroy_all 
puts 'Destorying tasks'
Task.destroy_all 

puts 'Creating Users'
jomarie = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '12345')

puts 'Creating projects'
['Candidate', 'Client'].each do |ele|
    Project.create!(title: ele, user_id: jomarie.id, date: '2021-01-14')
end

puts 'Creating tasks'

10.times do 
    Task.create!(archived: false, date: '2021-1-16', project_id: Project.all.sample.id, content: 'example task')
end