require 'sinatra'
require 'sinatra/reloader'

get '/' do
  number = rand(1..10)

  if params['guess']
    guess = params['guess'].to_i

    if guess > number
      erb :index, locals: { number: number, message: 'Too high!' }

    elsif guess < number
      erb :index, locals: { number: number, message: 'Too low!' }

    elsif guess == number
      erb :index, locals: { number: number, message: 'You got it!' }
    end
  else
    erb :index, locals: { number: false, message: false }
  end
end
