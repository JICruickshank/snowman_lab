require("minitest/autorun")
require("minitest/rg")

require_relative("../player.rb")

class TestPlayer < MiniTest::Test


  def setup

    @player1 = Player.new("J", 6)

  end


  def test_player_has_name

    assert_equal("J", @player1.name())

  end

end
