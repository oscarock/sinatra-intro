require 'faker'

10.times do |i|
  Notes.create(name: Faker::Job.title, description: Faker::Team.creature)
end