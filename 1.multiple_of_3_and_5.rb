
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def mul_of_three_and_five(n)
	sum = 0
	x = 3
	for x in 3...n 
		if x % 3 == 0 || x % 5 == 0
			puts "number :#{x}"
			sum = sum + x
		end
	end
	return sum
end

# print "Enter the end number:"
# n = gets.strip.to_i
# puts "Total sum is #{mul_of_three_and_five(n)}"