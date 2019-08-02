require 'sinatra'
require 'sinatra/reloader'

get '/' do
  number = rand(1..20)

  erb :index, locals: { number: number }
end
