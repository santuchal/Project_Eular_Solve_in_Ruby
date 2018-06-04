
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.



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
while (j < 2000000 )
	
	k = prime_number_check(j);
	if (k !=0)
		arr << k
		ii = ii+ k
	end
	j= j+1
end
puts arr
puts "Loop end "

puts "The summetion of prime number upto 2000000 is #{ii}"

