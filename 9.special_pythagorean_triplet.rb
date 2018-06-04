
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2

# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
for a in (1..500)
  for b in (a..500)
    for c in (b..500)
      if a**2 + b**2 == c**2 and a+b+c == 1000
        puts "The product of abc is #{a*b*c}"
        puts "And the value od a is #{a} b is #{b} and c is #{c}"
      end
    end
  end
end