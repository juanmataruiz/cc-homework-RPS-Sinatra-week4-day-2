require ('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps')


get '/game/:hand1/:hand2' do
  game = Game.new( params[:hand1], params[:hand2] )
  @outcome = game.play()
  erb( :result )
end

get '/' do
  erb( :home )
end

get '/game' do
  erb( :game )
end
