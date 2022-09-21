require_relative './stack'

require 'pry'

def balancing_parentheses(str)
	stack = Stack.new

	# str.chars.each do |value|
	# 	if stack.size == 0 || stack.peek == ")"
	# 		stack.push(value)
	# 	elsif value == ")"
	# 		stack.pop
	# 	else
	# 		stack.push(value)
	# 	end
	# end

	str.chars.each do |value|
		if stack.peek == "(" && value == ")"
			stack.pop
		else
			stack.push(value)
		end
	end

	stack.size

end

def balancing_parentheses_2(str)
	unclosed = 0
	unopened = 0

	str.chars.each do |value|
		if value == "("
			unclosed += 1
		elsif unclosed > 0
			unclosed -= 1
		else
			unopened += 1
		end
	end

	unclosed + unopened

end

# binding.pry
