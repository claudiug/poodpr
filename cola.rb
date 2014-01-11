require 'sinatra'

before do
  content_type :txt
  @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
end

get '/throw/:type' do
  player_throw = params[:type].to_s
  computer_choice = @throws.sample
  if @throws.include?(player_throw)
    halt 403, "you must add: #{@throws}"
  end
  if player_throw == computes_throw
    "you tied with computer"
  elsif computer_choice == @defeat[player_throw]
    "nice! #{player_throw} beats #{computer_choice}"
  else
    "You just loose #{computer_choice} beats #{player_throw}"
  end

end