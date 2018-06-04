#require "../2.even_fibonacci_number.rb" 
require "/Users/apple/Documents/ruby/quiz/2.even_fibonacci_number.rb"

describe 'even_fibonacci_number' do

      it 'By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...' do
          expect(even_fibonacci_number(10)).to eq 10 
      end
      it 'By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...' do
          expect(even_fibonacci_number(100)).to eq 188 
      end
      it 'By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...' do
          expect(even_fibonacci_number(1000)).to eq 798 
      end
end
