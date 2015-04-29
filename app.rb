require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('./lib/*.rb')

get('/choose_name') do
  erb(:choose_name)
end

post('/create') do
  @critter = Tamagotchi.new(params["name"].capitalize)

  redirect to('/')
end

get('/') do
  redirect to('/choose_name') if Tamagotchi.get_pet.nil?

  critter = Tamagotchi.get_pet

  if params.has_key?('food-amount')
    if params['food-amount'].empty?
      critter.feed
    else
      critter.feed(params['food-amount'].to_i)
    end
  end

  @food_amount = critter.food_level
  @params      = params
  @messages    = critter.messages.reverse

  erb(:index)
end

get('/reincarnate') do
  Tamagotchi.reset
  redirect to('/')
end
