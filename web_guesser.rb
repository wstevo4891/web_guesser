require 'sinatra'
require 'sinatra/reloader'

get '/' do
  x = rand

  "THE SECRET NUMBER IS #{x}"
end
