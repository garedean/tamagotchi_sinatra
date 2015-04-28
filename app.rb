require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('./lib/*.rb')

get('/') do
  critter = Tamagotchi.new('bob')

  if params.fetch('food-amount') != ""
    critter.feed(params.fetch('food-amount').to_i)
  else
    critter.feed()
  end

  # if params.fetch('food-amount')
  #   critter.food_level += params.fetch('food-amount').to_i
  # else
  #   critter.food_level += 10
  # end

  @food_amount = critter.food_level
  @params = params
  erb(:index)
end
