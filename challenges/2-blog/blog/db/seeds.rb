require 'faker'

10.times do |i|
  Entry.create(body: Faker::Lorem.sentence, title: Faker::Lorem.word, autor: Faker::Name.name)
end

seed_tags = { 	:tag_title    => "prioridad alta",
       			:priority => "alta"
	   		},
	   		{
	   			:tag_title    => "prioridad media",
       			:priority => "media"
	   		},
	   		{
	   			:tag_title    => "prioridad baja",
       			:priority => "baja"
	   		}

Tag.create(seed_tags)

10.times do |i|
  EntryTag.create(entry_id: rand(1..10), tag_id: rand(1..3))
end

