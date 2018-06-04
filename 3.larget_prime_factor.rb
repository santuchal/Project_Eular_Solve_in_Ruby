
#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

# prime_number = 600851475143 #6008514751 # 600851475143 #

# iterator = Math.sqrt(prime_number).to_i
# i = 2
# puts iterator
# while i < iterator
# 	if prime_number % i == 0
# 		puts "Not prime #{i}"
# 		exit(0)
# 	end
# 	i = i+1
# end
# puts "Prime Number #{prime_number}"

require 'prime'

# prime_number = 600851475143 

# iterator = Math.sqrt(prime_number).to_i

# prime_arr = Prime.take_while{|p| p < iterator }

# puts prime_arr
# prime_arr.each do |i|
# 	if prime_number % i == 0
# 		puts "Not prime #{i}"
# 		exit(0)
# 	end
# end
# puts "Prime Number #{prime_number}"


def prime_factors(n)
  prime_array = []    
  p = 2
  if n < 2
      return p
  end
  while p < n
    if n % p == 0 and Prime.prime?(p) 
      prime_array.push(p)
    end
  p +=1
  end
  return prime_array[-1]
end
#puts prime_factors(600851475143)
puts prime_factors(130)
