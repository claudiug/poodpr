require "rubygems"
require "sinatra"

after do
  puts "here we are #{self}"
end

get '/' do
  "Hello people #{Time.now} at the server"
end

get '/dogs' do
  "All the dogs are here"
end

get '/dog/:id' do
  puts "#{params[:id]}"
end