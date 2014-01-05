require 'sinatra'

before do
  content_type :txt
  @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
end

get '/throw/:type' do
  player_throw = params[:type].to_s
  compute_throw = @throws.sample
  if @throws.include?(player_throw)
    halt 403, "you must add: #{@throws}"
  end
  if player_throw == compute_throw
    "you tied with computer"
  elsif compute_throw == @defeat[player_throw]
    "nice! #{player_throw} beats #{compute_throw}"
  else
    "You just loose #{compute_throw} beats #{player_throw}"
  end
  
      

end