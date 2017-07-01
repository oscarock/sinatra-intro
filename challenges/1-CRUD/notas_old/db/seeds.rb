require 'faker'

10.times do |i|
  Cat.create(name: Faker::Name.name, description: rand(9) + 1)
end
