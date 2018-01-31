require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_word.rb")

class TestHiddenWord < MiniTest::Test

  def setup

    @hidden_word = HiddenWord.new("cheese")

  end


  def test_hidden_word_has_string

    assert_equal("cheese", @hidden_word.answer())

  end



end
