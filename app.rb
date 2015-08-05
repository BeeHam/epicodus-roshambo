require('sinatra')
require('sinatra/reloader')
require('./lib/roshambo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
