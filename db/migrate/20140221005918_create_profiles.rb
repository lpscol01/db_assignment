class CreateProfiles < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
	t.integer :user_id
	t.string :first_name
	t.string :last_name
	t.string :gender
	t.string :location #something like 'Brooklyn, NY'
	end
  end
end
