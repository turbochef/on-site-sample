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

    def test_operate
        test = Calculator.new
        test.operand_stack.push(4,4,4,4,4)
        test.operate("-")
        assert_equal(0, test.operand_stack[-1])
        test.operate("+")
        assert_equal(4, test.operand_stack[-1])
        test.operate("/")        
        assert_equal(1, test.operand_stack[-1])
        test.operate("*")
        assert_equal(4, test.operand_stack[-1])
    end
end