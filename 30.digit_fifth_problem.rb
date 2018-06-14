

# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

#     1634 = 1^4 + 6^4 + 3^4 + 4^4
#     8208 = 8^4 + 2^4 + 0^4 + 8^4
#     9474 = 9^4 + 4^4 + 7^4 + 4^4

# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def check_fifth_power_digit_sum()
	tot_sum = 0 
	for i in 2 ... 355000
		sum = 0
		number = i
		while number >= 1
			reminder = number % 10
			sum = sum + (reminder ** 5)
			number = number / 10
		end

		if i == sum 
			puts "The number is #{i}"
			tot_sum = tot_sum + i
			puts "Total Sum is #{tot_sum}"
		end

	end
	return tot_sum
end
puts "Total sum is #{check_fifth_power_digit_sum()}"