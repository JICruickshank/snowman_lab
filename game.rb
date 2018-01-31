class Game

  attr_accessor :player, :answer

  def initialize(player, answer)

    @player = player
    @answer = answer
    @guesses = []

  end


  def log_guess(guess)

    @guesses << guess

  end    

end
