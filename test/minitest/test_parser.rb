require "minitest/autorun"
require_relative "../../lib/parser"

class TestParser < Minitest::Test
  def setup
    @parser = Parser.new
  end

  def test_degits_split_pattern
    assert_equal ["123", "*456"], @parser.digits("123*456")
  end

  def test_degits_no_split_pattern
    assert_equal nil, @parser.digits("ABCDEFG")
  end
end
