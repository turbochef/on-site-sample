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

    def solve_equation(equation_string)
        equation_array = parse_equation(equation_string)
        equation_array.each do |term|
            if term =~ /[0-9]/
                @operand_stack.push(term.to_f)
            else term =~ /\+|\-|\*|\// && @operand_stack.length > 1
                operate(term)
            end
        end
        return @operand_stack[0] if @operand_stack.length == 1
    end
end