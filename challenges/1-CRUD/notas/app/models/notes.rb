class Notes < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :description, presence: true
end
