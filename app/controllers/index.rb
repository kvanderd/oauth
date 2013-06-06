enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end


post "/login" do
  session[:valid] = User.authenticate(params[:email], params[:password])
  if session[:valid]
    erb :secret 
  else
    erb :bad
  end
end

get '/secret' do 
  if session[:valid]
    erb :secret
  else
    erb :index
  end
end

post "/logout" do
  session.clear
  redirect('/')
end

get "/new" do 
   User.create(params)
  erb :index
end