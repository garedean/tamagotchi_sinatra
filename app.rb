require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('./lib/*.rb')

get('/') do
  @food_amount = params.fetch('food-amount')
  erb(:index)
end
