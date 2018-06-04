

# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

# def sum_of_a_number(number)
# 	sum = 0
# 	remonder = 0
# 	while number != 0
# 		reminder = number % 10
# 		sum = sum + reminder
# 		number = number/10
# 		p "Sum = #{sum} number = #{number}"
# 	end	
# 	return sum
# end

def sum_of_a_number(number)
	sum = 0 
	while number >= 1
		sum = sum + (number % 10)
		number = number / 10
	end
	return sum
end 

def power_of_a_number(number,power)
	if (number == 0)
		return 1
	end	
	sum = 1
	for i in 1..power
		sum = sum * number 
	end	
	return sum 
end

pow1 = power_of_a_number(2,1000)
puts "POwer of a number #{pow1}"

sum1 = sum_of_a_number(pow1)
puts "Sum = #{sum1}"
