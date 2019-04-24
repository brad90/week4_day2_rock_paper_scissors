require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps_model.rb')

also_reload('./modles/*')

get '/welcome'do
erb(:welcome)
end

get '/results/:hand1/:hand2'do

hand1 = params[:hand1].to_s
hand2 = params[:hand2].to_s
@result = RPSGame.check_win(hand1, hand2)
erb(:results)
end
