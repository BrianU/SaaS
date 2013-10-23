class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE

    raise NoSuchStrategyError.new, 'Strategy must be one of R,P,S' unless
        player1.has_legal_strategy? and player2.has_legal_strategy?

    winner =  player1.fight(player2)
    return winner



  end

  def self.tournament_winner(tournament)
    winners = []
    if tournament.size == 1
      return tournament[0]
    end
    tournament.each_slice(2) do |left, right|
      winners.push( winner(left, right) )
    end
    puts "interim winners ... "
    print winners
    tournament_winner( winners )
  end
end



module RPS
  def has_legal_strategy?
    if self[1].to_s.match(/[rpsRPS]/)
      return true
    end
    return false
  end
  def fight(enemy)
    puts "Big fight #{self[0]} versus #{enemy[0]}"
    if self[1] == 'R'
      if enemy[1] == 'P'
        return enemy
      elsif enemy[1] == 'S'
        return self
      elsif enemy[1] == 'R'
        return self
      end
    end
    if self[1] == 'P'
      if enemy[1] == 'P'
        return self
      elsif enemy[1] == 'S'
        return enemy
      elsif enemy[1] == 'R'
        return self
      end
    end
    if self[1] == 'S'
      if enemy[1] == 'P'
        return self
      elsif enemy[1] == 'S'
        return self
      elsif enemy[1] == 'R'
        return enemy
      end
    end
  end
end

class Array
  include RPS
end

@rock = ['Armando','R'] ; @paper = ['Dave','P'] ; @scissors = ['Sam','S']

tourney = [
            [
                [ ["Armando", "P"], ["Dave", "S"] ],
                [ ["Richard", "R"],  ["Michael", "S"] ],
            ],
            [
                [ ["Allen", "S"], ["Omer", "P"] ],
                [ ["David E.", "R"], ["Richard X.", "P"] ]
            ]
        ]


puts RockPaperScissors.tournament_winner([@rock,@scissors])

puts RockPaperScissors.tournament_winner( tourney )

