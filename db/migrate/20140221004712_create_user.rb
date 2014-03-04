class CreateUser < ActiveRecord::Migration
  def change
  	create_table :users do |t|
	t.string :email
	t.datetime :birthday
	t.integer   :age
	t.string :gender 
	end
  end
end
