require "sinatra"
require "shotgun"
set :session_secret, "nah nah nah"

get '/' do
   "Hello!"
end

get '/secret' do
  "You are nice"
end

get '/hey' do
  "hey"
end

get '/bae' do
  "you mean the world to me"
end

get '/day' do
  "hope it's sunny"
end

get '/him' do
  "ting"
end

get '/random-cat' do
 @name = ["Amigo", "Oscar", "Viking"].sample
 @friend = ["Clark", "Cat", "MY NAME JEFF"].sample
 erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @friend = ["Clark", "Cat", "MY NAME JEFF"].sample
  erb(:index)
 end