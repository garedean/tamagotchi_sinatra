require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('./lib/*.rb')

get('/') do
  if params['food-amount']
    food_amount = params.fetch('food-amount').to_i
  else
    food_amount = 10
  end

  critter = Tamagotchi.new('bob')
  critter.feed(food_amount)
  @food_amount = critter.food_level
  erb(:index)
end
