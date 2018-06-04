
# The prime 41, can be written as the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13

# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most consecutive primes?

def prime_number_check(number)
	prime_number = number # 600851475143 #

	iterator = Math.sqrt(prime_number).to_i
	i = 2
	while i <= iterator
		if prime_number % i == 0
			return 0
		end
		i = i+1
	end
	return prime_number
end

arr = [2,3,5,7]
ii = 17
j = 8
k = 0 
puts "Loop start"
while (ii < 1000000 )
	
	k = prime_number_check(j);
	if (k !=0)
		arr << k
		ii = ii+ k
	end
	j= j+1
end
#puts arr
puts "Loop end "
puts "Array is #{arr}"
puts "The summetion of prime number upto 1000000 is #{ii - ii[-1]}"