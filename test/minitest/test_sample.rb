require "minitest/autorun"
require_relative "../../lib/hello"

class TestHello < Minitest::Test
  def setup
    @hello = Hello.new
  end

  def test_greeting
    assert_equal "hello", @hello.greeting
  end
end
