# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'bcrypt'

puts 'Destroying users'
User.destroy_all
puts 'Destroying projects'
Project.destroy_all 
puts 'Destorying tasks'
Task.destroy_all 
puts 'Destroying candidates'
Candidate.destroy_all
puts 'Destroying candidate calls'
CandidateCall.destroy_all
puts 'Destroying companies'
Company.destroy_all 
puts 'Destroying client calls'
ClientCall.destroy_all
puts 'Destroying open jobs'
OpenJob.destroy_all
puts 'Destroying job applications'
JobApplication.destroy_all

puts 'Creating Users'

jomarie = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: BCrypt::Password.create('12345'))

nelly = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: BCrypt::Password.create('hello'))



puts 'Creating projects'

days = ["01", "04", "05", "06", "07", "08", "11", "12", "13", "14", '15', "18", "19", "20", "21", "22", "25", "26", "27", "28", "29"]

days.each do |num|
    Project.create!(title: "Candidate", user_id: jomarie.id, date: "2021-01-#{num}", archived: false)
end

days.each do |num|
    Project.create!(title: "Client", user_id: jomarie.id, date: "2021-01-#{num}", archived: false)
end
days.each do |num|
    Project.create!(title: "Candidate", user_id: nelly.id, date: "2021-01-#{num}", archived: false)
end

days.each do |num|
    Project.create!(title: "Client", user_id: nelly.id, date: "2021-01-#{num}", archived: false)
end



puts 'Creating tasks'

250.times do 
    Task.create!(archived: false, date: "2021-1-#{days.sample}", project_id: Project.all.sample.id, content: Faker::Lorem.sentence)
end



puts 'Creating Candidates'

100.times do 
    Candidate.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, cell_phone: Faker::PhoneNumber.cell_phone, home_phone: Faker::PhoneNumber.phone_number, date_of_birth: Faker::Date.birthday, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip_code, notes: Faker::Lorem.paragraph)
end



puts 'Creating candidate calls'



250.times do 
    CandidateCall.create!(date: Faker::Date.backward(days: 30), time: Faker::Time.backward(days: 30, period: :morning, format: :short), notes: Faker::Lorem.sentence, user_id: User.all.sample.id, candidate_id: Candidate.all.sample.id)
end

250.times do 
    CandidateCall.create!(date: Faker::Date.backward(days: 70), time: Faker::Time.backward(days: 70, period: :afternoon, format: :short), notes: Faker::Lorem.sentence, user_id: User.all.sample.id, candidate_id: Candidate.all.sample.id)
end




puts 'Creating Companies'

100.times do 
    Company.create!(name: Faker::Company.name, industry: Faker::Company.industry, address: Faker::Address.full_address, poc_name: Faker::FunnyName.name, poc_email: Faker::Internet.email, poc_number: Faker::PhoneNumber.phone_number, notes: Faker::Lorem.paragraph)
end


puts 'Creating Client Calls'

250.times do 
    ClientCall.create!(date: Faker::Date.backward(days: 30), time: Faker::Time.backward(days: 30, period: :morning, format: :short), notes: Faker::Lorem.sentence, user_id: User.all.sample.id, company_id: Company.all.sample.id)
end

250.times do 
    ClientCall.create!(date: Faker::Date.backward(days: 70), time: Faker::Time.backward(days: 70, period: :afternoon, format: :short), notes: Faker::Lorem.sentence, user_id: User.all.sample.id, company_id: Company.all.sample.id)
end



puts 'Creating open jobs'

100.times do 
    OpenJob.create!(title: Faker::Job.title , description: Faker::Job.key_skill, pay: 24 , due_date: Faker::Date.forward(days: 30), user_id: User.all.sample.id, company_id: Company.all.sample.id)
end



puts 'Creating job applications'

30.times do 
    JobApplication.create!(candidate_id: Candidate.all.sample.id, open_job_id: OpenJob.all.sample.id, red: true)
end
30.times do 
    JobApplication.create!(candidate_id: Candidate.all.sample.id, open_job_id: OpenJob.all.sample.id, green: true)
end
20.times do 
    JobApplication.create!(candidate_id: Candidate.all.sample.id, open_job_id: OpenJob.all.sample.id, yellow: true)
end
