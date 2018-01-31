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

end
