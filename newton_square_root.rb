def newton_square_root(number)
	if number <= 0 
		return 0
	end

	approx = 0.5 * number
	better = 0.5 * (approx + number/approx)

	while better != approx
		approx = better
		better = 0.5 * (approx + number/approx)
	end

	return approx
end

# puts "Square Root of 9 is #{newton_square_root(9)} using newton square root method."

# puts "Square root of 12 is #{newton_square_root(12)}"

# puts "Square root of 0 is #{newton_square_root(0)}"

# puts "Square root of 1 is #{newton_square_root(1)}"

# puts "Square root of 2 is #{newton_square_root(2)}"

#puts "Square root of -1 is #{newton_square_root(-1)}"