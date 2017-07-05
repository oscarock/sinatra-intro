class CreateTags < ActiveRecord::Migration[5.0]
  def change
  	create_table :tags do |t|
  		t.string :tag_title
  		t.string :priority

  		t.timestamps
  	end
  end
end
