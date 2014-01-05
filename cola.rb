require 'sinatra'

before do
  content_type :txt
  @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
end

get '/' do
  "Hello world!"
end

get '/throw/:type' do
  player_throw = params[:type].to_sym
  if @throws.include?(player_throw)
    halt 403, "you must add: #{@throws}"
  end
end