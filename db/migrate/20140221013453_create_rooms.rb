class CreateRooms < ActiveRecord::Migration
  def change
  	create_table :rooms do |t|
  		t.integer :room_number
  		t.string :teacher_name
  	end
  end
end
