
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'prime'


	def prime_number_check(number)
		prime_number = number # 600851475143 #

		iterator = Math.sqrt(prime_number).to_i
		i = 2
		puts "Iterator from def #{iterator}"
		while i <= iterator
			if prime_number % i == 0
				puts "Not prime #{number}"
				return 0
			end
			i = i+1
		end
		return prime_number
	end

	arr = [2,3,5,7]
	ii = 4
	j = 8
	k = 0 
	puts "Loop Start"
	while (j >= 1 )
		
		k = prime_number_check(j);
		puts "AAA#{k}"
		if (k !=0)
			arr << k
			ii = ii+ 1
		end
		j= j+1
		if ii == 10001
			break
			j = 1
		end
	end
	arr1 = Prime.take(10001)
puts "The array is #{arr}"
puts "The 10001 element is #{arr[10001-1]}" 
puts "The array 2 is #{arr1}"

if arr[10001-1] == arr1[10001-1]
	puts "Both array element are equal "
end

