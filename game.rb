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


  def guess_true_or_false(guess)

    for letter in @answer.split("")
      return true if letter == guess
    end
    return false
  end

end
