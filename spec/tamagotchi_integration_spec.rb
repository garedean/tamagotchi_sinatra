require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the tamagotchi path', :type => :feature) do
  it('responds to being fed') do
    visit('/')
    click_button('Feed')
    expect(page).to(have_content('Your Tamagotchi has 20 food in it'))
  end
end
