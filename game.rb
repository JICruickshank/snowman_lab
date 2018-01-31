class Game

  attr_accessor :player, :answer

  def initialize(player, answer)

    @player = player
    @answer = answer
    @guesses = []
    @answer_letters = @answer.split("")
    @display = "*" * (@answer.length)
    @display_letters = @display.split("")

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

  def hide_answer(answer)

    display_length = @answer.length
    display = "*" * (display_length)
    return display

  end

end
