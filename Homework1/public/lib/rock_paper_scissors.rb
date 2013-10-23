class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE

#    raise NoSuchStrategyError.new, 'Strategy must be one of R,P,S' unless
#        player1.has_legal_strategy? and player2.has_legal_strategy?

    winner =  player1.fight(player2)
    if !winner
      puts "Couldn't find a winner"
      return [player1,player2]
    end
    return winner
  end

  def self.tournament_winner(tournament)

    winners = []

    if tournament.size == 1
      print "I've hit the bottom ... "
      puts "the winner is ... "
      print tournament
      return tournament
    else
      tournament.each_slice(2) do |left, right|
        winners <<  winner(left, right)
   #     winners <<  winner(right[0],right[1])
      end
    end
    puts "going deeper"
    tournament_winner( winners )
  end
end

class String
  def method_missing(method_id, *args, &block)
    puts "whatever"
  end
end



module RPS

  def method_missing( method_id, *args, &block )
    puts "Hello Brian How are oyu? tried to call #{method_id} with these ars #{args}"
  end


  def has_legal_strategy?
    if self[1].match(/[rpsRPS]/)
      return true
    end
    return false
  end

  def fight(enemy)
    if self[1] == 'R'
      if enemy[1] == 'P'
        winner =enemy
      elsif enemy[1] == 'S'
        winner =self
      elsif enemy[1] == 'R'
        winner =self
      end
    end
    if self[1] == 'P'
      if enemy[1] == 'P'
        winner =self
      elsif enemy[1] == 'S'
        winner =enemy
      elsif enemy[1] == 'R'
        winner =self
      end
    end
    if self[1] == 'S'
      if enemy[1] == 'P'
        winner =self
      elsif enemy[1] == 'S'
        winner =self
      elsif enemy[1] == 'R'
        winner =enemy
      end
    end
    return winner
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


#puts RockPaperScissors.tournament_winner([@rock,@scissors])

RockPaperScissors.tournament_winner( tourney )

