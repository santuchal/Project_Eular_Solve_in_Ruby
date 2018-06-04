

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


def is_palindrome(n)
	n == n.to_s.reverse.to_i
end
palindrome = [ ]
x = 999
while x > 100
	y = 999
	while y > 100
		product = x * y
		if is_palindrome(product)
			palindrome << product
		end
	  y = y - 1
	end	
  x = x - 1
end

puts "#{palindrome}"
puts "Largest is #{palindrome.max}"