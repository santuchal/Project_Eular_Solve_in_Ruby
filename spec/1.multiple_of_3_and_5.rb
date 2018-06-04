#require "../1.multiple_of_3_and_5.rb"
require "/Users/apple/Documents/ruby/quiz/1.multiple_of_3_and_5.rb"

describe 'number_letter_counts' do

      it 'If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.The sum of these multiples is 23.' do
          expect(mul_of_three_and_five(10)).to eq 23 
      end
      it 'If we list all the natural numbers below 100 that are multiples of 3 or 5.The sum of these multiples is 2318.' do
          expect(mul_of_three_and_five(100)).to eq 2318 
      end
      it 'If we list all the natural numbers below 1000 that are multiples of 3 or 5.The sum of these multiples is 233168.' do
          expect(mul_of_three_and_five(1000)).to eq 233168 
      end
end
