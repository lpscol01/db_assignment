class CreateGrades < ActiveRecord::Migration
  def change
  	create_table :grades do |t|
	t.integer :user_id
	t.integer :test_score
	t.text    :course
	t.timestamps # creates 'created_at' and 'updated_at' columns automatically
	end
  end
end
