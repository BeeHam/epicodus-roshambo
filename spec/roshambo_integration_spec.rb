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

  it('returns players to home page', {:type => :feature}) do
    visit('/roshambo?player_one_hand=rock&player_two_hand=shafhsd')
    click_link('Return Home')
    expect(page).to have_content("Let's play Roshambo!")
  end
end
