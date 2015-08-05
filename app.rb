require('sinatra')
require('sinatra/reloader')
require('./lib/roshambo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/roshambo') do
  @beats = params.fetch('player_one_hand').beats?(params.fetch('player_two_hand'))
  erb(:roshambo)
end
