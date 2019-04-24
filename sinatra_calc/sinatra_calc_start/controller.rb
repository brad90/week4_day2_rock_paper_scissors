require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/calculator.rb')

also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about)
end

get '/add/:number1/:number2' do
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  @calculation =  Calculator.add(num1, num2)
  erb(:result)
end

get '/subtract/:number1/:number2' do
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i

  @calculation =  Calculator.subtract(num1,num2).to_s
  erb(:result)
end

get '/multiply/:number1/:number2'do
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i

  @calculation =  Calculator.multiply(params[:number1].to_i, params[:number2].to_i).to_s
  erb(:result)
end

get '/divide/:number1/:number2' do
  @calculation =  Calculator.divide(params[:number1].to_f, params[:number2].to_f).to_s
  erb(:result)
end
