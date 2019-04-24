require('sinatra')
require('sinatra/contrib/all') if development?

get '/hi' do
   'Hello World!'
end


get '/roll-die' do
  "Rolling the die...#{rand(1...7)}"
end

get '/name/:first/:last' do
  return "Your name is #{params[:first]} #{params['last']}"
end

get '/friends/:number' do
  friends = ["Joey","Pheobe","Monica","Chandler","Ross","Rachel"]
  index = params["number"].to_i -1
  return friends[index]
end
