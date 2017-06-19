require_relative 'calculator'
require 'test/unit'

class CalculatorTest < Test::Unit::TestCase
    def test_init
        test = nil
        assert_nil(test)
        test = Calculator.new
        assert_not_nil(test, "calculator could not be initialized")
        assert_equal([], test.operand_stack)
    end
end