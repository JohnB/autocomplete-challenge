require 'rubygems'
require 'sinatra'
require 'sinatra/json'

set :public_folder, 'public'

get '/' do
  redirect '/index.html'
end 

get '/countries' do
  term = params['term']
  if term 
    json `grep #{term} countries.json`.split("\n").take(20)
  else 
    json []
  end
end