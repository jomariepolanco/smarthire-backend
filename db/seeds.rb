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
puts 'Destroying candidates'
Candidate.destroy_all
puts 'Destroying candidate calls'
CandidateCall.destroy_all
puts 'Destroying companies'
Company.destroy_all 
puts 'Destroying open jobs'
OpenJob.destroy_all
puts 'Destroying job applications'
JobApplication.destroy_all

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

puts 'Creating Candidates'

20.times do 
    Candidate.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, cell_phone: Faker::PhoneNumber.cell_phone, home_phone: Faker::PhoneNumber.phone_number, date_of_birth: Faker::Date.birthday, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip_code)
end

puts 'Creating candidate calls'

20.times do 
    CandidateCall.create!(date: Faker::Date.backward(days: 30), time: Faker::Time.backward(days: 30, period: :morning, format: :short), notes: Faker::Lorem.sentence, user_id: 2, candidate_id: Candidate.all.sample.id)
end

20.times do 
    CandidateCall.create!(date: Faker::Date.backward(days: 70), time: Faker::Time.backward(days: 70, period: :afternoon, format: :short), notes: Faker::Lorem.sentence, user_id: 2, candidate_id: Candidate.all.sample.id)
end

puts 'Creating Companies'

20.times do 
    Company.create!(name: Faker::Company.name, industry: Faker::Company.industry, address: Faker::Address.full_address, poc_name: Faker::FunnyName.name, poc_email: Faker::Internet.email, poc_number: Faker::PhoneNumber.phone_number)
end

puts 'Creating open jobs'

20.times do 
    OpenJob.create!(title: Faker::Job.title , description: Faker::Job.key_skill, pay: 24 , due_date: Faker::Date.forward(days: 30), user_id: 2, company_id: Company.all.sample.id)
end

puts 'Creating job applications'

20.times do 
    JobApplication.create!(candidate_id: Candidate.all.sample.id, open_job_id: OpenJob.all.sample.id, red: true)
end
20.times do 
    JobApplication.create!(candidate_id: Candidate.all.sample.id, open_job_id: OpenJob.all.sample.id, green: true)
end
10.times do 
    JobApplication.create!(candidate_id: Candidate.all.sample.id, open_job_id: OpenJob.all.sample.id, yellow: true)
end
