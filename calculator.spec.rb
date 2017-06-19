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

    def test_parse
        test = Calculator.new
        assert_equal(["1", "2", "+"], test.parse_equation("1 2 +"))
        assert_equal(["11", "22", "+", "+"], test.parse_equation("11 22 ++"))
        assert_equal(["-1", "-2"], test.parse_equation("-1 -2"))                           
    end


    def  test_addition
        test = Calculator.new
        assert_equal(4.0 , test.solve_equation("2 2 +"))
        assert_equal(2.0 , test.solve_equation("-2 +"))
        assert_equal(-18.0 , test.solve_equation("-20 +"))
    end

    def test_subtraction
        test = Calculator.new
        assert_equal(-2 , test.solve_equation("0 2 -"))
        assert_equal(-10 , test.solve_equation("8 -"))
        assert_equal(0 , test.solve_equation("-10 -"))
    end

    def test_multiplication
        test = Calculator.new
        assert_equal(2 , test.solve_equation("1 2 *"))
        assert_equal(20 , test.solve_equation("10 *"))
        assert_equal(-20 , test.solve_equation("-1 *"))
    end

    def test_division
        test = Calculator.new
        assert_equal(10 , test.solve_equation("100 10 /"))
        assert_equal(-5 , test.solve_equation("-2 /"))
    end

    def test_compound_equation
        test = Calculator.new
        assert_equal(14, test.solve_equation("5 1 2 + 4 * + 3 -"))
    end
end