class Game

  attr_accessor :player, :answer

  def initialize(player, answer)

    @player = player
    @answer = answer
    @guesses = []

  end

end
