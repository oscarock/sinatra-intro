class CreateNotes < ActiveRecord::Migration[5.0]
  def change
  	create_table :notes do |t|
  		t.string :name
  		t.string :description

  		t.timestamp
  	end
  end
end
