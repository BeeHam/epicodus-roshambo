class String
  TIE = 'Tie'
  WIN = 'Win'
  LOSS = 'Loss'
  define_method(:beats?) do |player_two_hand|

    hands = {"rock"     => {"rock"     => TIE,
                            "scissors" => WIN,
                            "paper"    => LOSS},
             "scissors" => {"rock"     => LOSS,
                            "scissors" => TIE,
                            "paper"    => WIN},
             "paper"    => {"rock"     => WIN,
                            "scissors" => LOSS,
                            "paper"    => TIE}}

    output = "Player 1's hand '#{self}' against Player 2's hand '#{player_two_hand}' "

    if !hands.include?(self) || !hands.include?(player_two_hand)
      output = "A player has entered invalid input, please try again"
    else
      result = hands.fetch(self).fetch(player_two_hand)
      output.concat("results in a #{result}!")
    end
  end
end
