

# The Fibonacci sequence is defined by the recurrence relation:

#     Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.

# Hence the first 12 terms will be:

#     F1 = 1
#     F2 = 1
#     F3 = 2
#     F4 = 3
#     F5 = 5
#     F6 = 8
#     F7 = 13
#     F8 = 21
#     F9 = 34
#     F10 = 55
#     F11 = 89
#     F12 = 144

# The 12th term, F12, is the first term to contain three digits.

# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

def fibonacci_sequence(number, timer_start)
	i = 1
	n1 = 1
	n2 = 1
	for i in 3 ... number
		temp = n1
		n1 = n2
		n2 = n2 + temp
		if n2.to_s.length == 1000
			puts "The term is F#{i} and value is #{n2}"
			puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
			exit(0)
		end
	end
end
timer_start = Time.now
fibonacci_sequence(10000, timer_start)
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
