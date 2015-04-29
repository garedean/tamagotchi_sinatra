require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application

describe('the create path', :type => :feature) do
  it('creates a new tamagotchi') do
    visit('/choose_name')
    fill_in('name', :with => 'bill')
    click_button('Submit')
    expect(page).to(have_content("A baby Tamagotchi is born. Its name is 'Bill'"))
  end
end
