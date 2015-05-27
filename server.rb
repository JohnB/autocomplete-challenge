require 'rubygems'
require 'sinatra'
require 'sinatra/json'

set :public_folder, 'public'

get '/' do
  redirect '/index.html'
end 

get '/countries' do
  term = params['term']
  puts params
  if term 
    json `grep #{term} countries.txt`.split("\n").sort.take(10)
  else 
    json []
  end
end