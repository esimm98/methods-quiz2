require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuiz2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_dice_sum
		assert_equal 8, @m.dice_sum(3, 5)
		assert_equal 7, @m.dice_sum(6, 6)
		assert_equal 11, @m.dice_sum(6, 5)
		assert_equal 3, @m.dice_sum(1, 1)
	end

	def test_max_maybe
		assert_equal 0, @m.max_maybe(1, 1)
		assert_equal 7, @m.max_maybe(12, 7)
		assert_equal 11, @m.max_maybe(11, 7)
	end

end
