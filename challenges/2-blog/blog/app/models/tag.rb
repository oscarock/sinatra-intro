class Tag < ActiveRecord::Base
  # Remember to create a migration!
	has_many :entry_tags
	has_many :entrys, through: :entry_tags
end
