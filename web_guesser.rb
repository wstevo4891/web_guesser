require 'sinatra'
require 'sinatra/reloader'

set :number, rand(1..20)

def check_guess(guess)
  return { number: false, message: false } unless guess

  guess = guess.to_i

  if guess > settings.number
    { number: false, message: 'Too high!' }

  elsif guess < settings.number
    { number: false, message: 'Too low!' }

  elsif guess == settings.number
    { number: settings.number, message: 'You got it!' }
  end
end

get '/' do
  response = check_guess(params['guess'])

  erb :index, locals: response
end

get '/start-over' do
  settings.number = rand(1..20)

  redirect '/'
end
