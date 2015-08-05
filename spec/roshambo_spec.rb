require('rspec')
require('roshambo')

describe('String#beats') do
  it('returns win message') do
    expect('rock'.beats?('scissors')).to(eq("Player 1's hand 'rock' against Player 2's hand 'scissors' results in a Win!"))
  end

  it('returns loss message') do
    expect('rock'.beats?('paper')).to(eq("Player 1's hand 'rock' against Player 2's hand 'paper' results in a Loss!"))
  end

  it('returns tie message') do
    expect('rock'.beats?('rock')).to(eq("Player 1's hand 'rock' against Player 2's hand 'rock' results in a Tie!"))
  end
end
