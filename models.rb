# Objects of this class are stored 
# in 'users' table in DB
class User < ActiveRecord::Base

	has_many :posts
	has_one  :profile
	has_many :user_rooms
	has_many :rooms, through: :user_rooms
	has_many :grades

end

class Post < ActiveRecord::Base

	belongs_to :user
	
end

class Profile <ActiveRecord::Base

	belongs_to :user

end	

class Room <ActiveRecord::Base

	has_many :user_rooms
	has_many :users, through: :user_rooms

end	


class UserRoom <ActiveRecord::Base

	belongs_to :user
	belongs_to :room
	

end

class Grade <ActiveRecord::Base

	belongs_to :user
	

end









