class CreateEntries < ActiveRecord::Migration[5.0]
  def change
  	create_table :entries do |t|
  		t.string :body
  		t.string :title
  		t.string :autor

  		t.timestamps
  	end
  end
end
