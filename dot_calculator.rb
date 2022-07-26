def dot_calculator(equation)
    operation = equation.gsub(" ", "")
    operator = operation.gsub(".", "")
    operator.gsub!("//", "/") if operator.include?("//")
    first_number = operation.split(operator).first.size
    second_number = operation.split(operator).last.size
    "." * first_number.send(operator.to_sym, second_number)
end