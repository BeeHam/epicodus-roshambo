require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the roshambo path', {:type => :feature}) do
  it('processes Player 1 and Player 2 entries') do
    visit('/')
    fill_in('player_one_hand', :with => 'rock')
    fill_in('player_two_hand', :with => 'rock')
    click_button('Submit')
    expect(page).to have_content('Tie')
  end
end
