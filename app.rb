require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "rack-flash"

#Settings

set :database, "sqlite3:///test_app.sqlite3"
set :sessions, true
use Rack::Flash, :sweep => true

Dir['./*.rb', ',/models/*.rb'].each{ |f| require f }

#Methods
#
def current_user
	if session[:user_id]
		@current_user = User.find( session[:user_id] )
	end
end	

#Routes
#

get "/" do
	"Hello World!"
	erb :index
end

get "/greeting" do
	"How you doinn?"
end

get "/bye" do
	"see you later"
end

get "/home" do
	erb :home
end

post "/sign-in" do
	#this was for basic console param hash-> puts "my params are" + params.inspect
	@user = User.where(email: params[:username] ).first

	if @user && ( @user.password == params[:password] )
		puts "Yay! Signed in!"
		#store the user id in the session
		session[:user_id] = @user.id

		#notify the user that they are signed in
		flash[:notice] = "You are signed in!"

		redirect to "/home"
	else
		flash[:error] = "Unable to sign you in."

		redirect to "/"	
	end	
end			

