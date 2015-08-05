class String
  define_method(:beats?) do |player_one_hand|
    TIE = 'tie'
    WIN = 'win'
    LOSE = 'lose'
    hands = {"rock"     => {"rock"     => TIE,
                            "scissors" => WIN,
                            "paper"    => LOSE},
             "scissors" => {"rock"     => LOSE,
                            "scissors" => TIE,
                            "paper"    => WIN},
             "paper"    => {"rock"     => WIN,
                            "scissors" => LOSE,
                            "paper"    => TIE}}

    result = hands.fetch(self).fetch(player_one_hand)

    result.eql?(WIN)


  end
end
