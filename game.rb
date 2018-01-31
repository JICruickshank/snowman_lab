class Game

  attr_accessor :player, :answer

  def initialize(player, answer)

    @player = player
    @answer = answer
    @guesses = []
    @answer_letters = @answer.split("")
    @display = "*" * (@answer.length)
    @display_letters = []

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

  def replace_letter(guess)

    # if guess_true_or_false(guess)
    #   for letter in @answer_letters
    #     if letter == guess
    #       position = letter.index
    #     end
    #   end
    #
    # end

    # display_array = []
    #
    # for letter in @answer_letters
    #   if letter != guess
    #     # || @guesses.include?(guess) == false
    #     letter = "*"
    #
    #   end
    # end
    # return @answer_letters


    # for letter in @answer.split("")
    #   if letter == guess
    #     position = letter.index
    #
    #     @display_letters[position] = guess
    #   end
    # end

    @display_letters = @answer_letters

    for letter in @display_letters
      if letter != guess && !@guesses.include?(letter)

      letter.sub!(letter, '*')

      end

    end
    live_display = @display_letters.join("")
    return live_display

  end

end
