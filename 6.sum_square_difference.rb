# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

arr = Array.new
sum1 = 0
sum2 = 0
for i in 1 .. 100
	mul = i * i
	arr << mul
	sum1 = sum1 + mul
	sum2 = sum2 + i
end
puts "Summetaion after square of each element #{sum1}" 
puts "Only Summetaion of each element in an array #{sum2}"
mul2 = sum2 * sum2
puts "Multiplication after summetion on array 2 #{mul2}"
puts "Difference is #{mul2 - sum2}"