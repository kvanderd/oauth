get '/' do
  # Look in app/views/index.erb
  erb :index
end


post "/create_user" do
  #create a new user object save to db
  #create user cookie session
  #redirct to private logged in url
  erb :user_view
end

post "/login" do
  #authiticate user login if success
  #create user cookie session and redirect to prive loffed in url "user_view"
  #else redirect to index
  end

post "/logout" do
  #clear cookie session
  #redirect to index
end

get "/secret" do 
  #if active session? (#this is a conidtional - session cookie error)
  #else redirect to index
  erb: user_view
end