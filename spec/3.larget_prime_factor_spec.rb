
#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

# prime_number = 600851475143 #6008514751 # 600851475143 #
require "/Users/apple/Documents/ruby/quiz/3.larget_prime_factor.rb"

describe 'largest_number' do

      it 'The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 100.' do
          expect(prime_factors(100)).to eq 5 
      end
      it 'The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 130' do
          expect(prime_factors(130)).to eq 13 
      end
      it 'The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 290' do
          expect(prime_factors(290)).to eq 29 
      end
end
