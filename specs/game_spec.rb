require("minitest/autorun")
require("minitest/rg")

require_relative("../game.rb")

class TestGame < MiniTest::Test

  def setup

    @game = Game.new("J", "cheese")

  end


  def test_game_has_player

    assert_equal("J", @game.player())

  end

  def test_game_has_answer

    assert_equal("cheese", @game.answer())

  end


    def test_guess_goes_into_guesses

      guess = "s"
      @game.log_guess(guess)
      guess = "c"
      result = @game.log_guess(guess)
      assert_equal(["s", "c"], result)

    end

    def test_guess_true_or_false__true

      guess = "s"

      assert_equal(true, @game.guess_true_or_false(guess))

    end

    def test_guess_true_or_false__false

      guess = "z"

      assert_equal(false, @game.guess_true_or_false(guess))

    end

    def test_view_display

      assert_equal("******", @game.hide_answer(@answer))

    end

    def test_true_guess_replace_letter

      guess = "s"

      assert_equal("****s*", @game.replace_letter(guess))

    end

end
