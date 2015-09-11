require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_without_doubles
		assert_equal "8", @m.without_doubles(3, 5)
		assert_equal "7", @m.without_doubles(6, 6)
		assert_equal "11", @m.without_doubles(6, 5)
		assert_equal "3", @m.without_doubles(1, 1)
	end

end
