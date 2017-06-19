class Calculator
    attr_reader :operand_stack

    def initialize
        @operand_stack = []
    end

    def operate(operator)
        right_operand = @operand_stack.pop()
        left_operand = @operand_stack.pop()
        @operand_stack.push(left_operand.send(operator, right_operand))
    end

    def parse_equation(equation)
        parsed_input = (equation).scan(/\d+|-+[0-9]+|\S/)
        return parsed_input
    end
end