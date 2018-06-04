

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factorial(number)
	if number == 0
		number = 1
	end
	for i in 1...number
		number = number * i
	end
	return number
end

def sum_number(number)
	sum = 0 
	while number >= 1
		sum = sum + (number % 10)
		number = number / 10
	end
	return sum
end 

fact = factorial(100)

sum = sum_number(fact)
puts "Factorial of 5 is #{fact}"
puts "Sum is #{sum}"
