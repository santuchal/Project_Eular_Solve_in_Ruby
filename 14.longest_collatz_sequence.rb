# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.


def create_chain(number)
	a = [number]
	while ( number != 1)
		if (number % 2 == 0)
			number = number/2
			a<< number
		else
			number = (3*number + 1)
			a<<number
		end
		# puts "number#{number}"
	end
	return a
end
c = []
iterator = 1
while (iterator < 1000000)

	b = create_chain(iterator)
	if b.count > c.count
		c = b
	end
	iterator = iterator + 1
	puts "Array is #{b} and the size is #{b.count}"
end

puts "The long chain is #{c}"

puts "The number is #{c[0]}"
