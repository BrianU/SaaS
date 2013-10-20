class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    player1 = Player.new(player1)
    player2 = Player.new(player2)
    raise NoSuchStrategyError.new, 'Strategy must be one of R,P,S' unless
        player1.has_legal_strategy? and player2.has_legal_strategy?

    puts player1.fight(player2)


  end
  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end
end

class Player
  attr_accessor :name, :strategy
  def initialize(player)
    if player.empty?
      return false
    end
    @strategy = player.pop
    @name     = player.pop
  end
  def has_legal_strategy?
    if strategy.downcase.match(/[rps]/)
      return true
    end
    return false
  end
  def fight(enemy)
    puts "Big fight #{self.name} versus #{enemy.name}"
    if strategy.downcase == 'r'
      if enemy.strategy == 'p'
        return enemy
      elsif enemy.strategy == 's'
        return self
      elsif enemy.strategy == 'r'
        return self
      end
    end
    if strategy.downcase == 'p'
      if enemy.strategy == 'p'
        return self
      elsif enemy.strategy == 's'
        return enemy
      elsif enemy.strategy == 'r'
        return self
      end
    end
    if strategy.downcase == 's'
      if enemy.strategy == 'p'
        return self
      elsif enemy.strategy == 's'
        return self
      elsif enemy.strategy == 'r'
        return enemy
      end
    end
  end
end

@rock = ['Armando','R'] ; @paper = ['Dave','P'] ; @scissors = ['Sam','S']

RockPaperScissors.winner(@rock, @scissors)