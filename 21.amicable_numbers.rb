

# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
def divisable_number_check(number)
	arr = Array.new
	iterator = number/2
	i = 1
	while i <= iterator
		if number % i == 0
			arr << i
		end
		i = i+1
	end
	#puts "The number is #{number} and divisors is #{arr}"
	return arr
end

#puts divisable_number_check(100).inject(0){|sum,x| sum + x }


def amicable_number(number1)
	first_number_divisible_sum = divisable_number_check(number1).inject(0){|sum,x| sum + x }
	second_number_divisable_sum = divisable_number_check(first_number_divisible_sum).inject(0){|sum,x| sum + x }

	#puts "The sum is #{first_number_divisible_sum} and #{second_number_divisable_sum}"

	if first_number_divisible_sum != second_number_divisable_sum and number1 == second_number_divisable_sum 

		puts "The Pair Number is {#{first_number_divisible_sum} and #{second_number_divisable_sum}}"
		return number1
	end
	return 0
end

#amicable_number(220)
sum = 0 
i = 10000
while i < 1000000
	sum =  sum + amicable_number(i)
	i = i + 1

end

puts "Sum is #{sum}"