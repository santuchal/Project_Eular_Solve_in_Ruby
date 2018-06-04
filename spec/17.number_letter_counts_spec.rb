require "/Users/apple/Documents/ruby/quiz/17.number_letter_counts.rb"


describe 'number_letter_counts' do

      it 'returns 1 if number is 1' do
          expect(number_to_word(1)).to eq "one" 
      end

      it 'returns 1 and 2 if number is 2' do
          expect(number_to_word(2)).to eq "onetwo" 
      end
      it 'returns 100  if number is 100' do
          expect(one_by_one(100)).to eq "onehundred" 
      end
      it 'returns 200  if number is 200' do
          expect(one_by_one(200)).to eq "twohundred" 
      end
      it 'returns 999  if number is 999' do
          expect(one_by_one(999)).to eq "ninehundredandninetynine" 
      end
      it 'returns 1000  if number is 1000' do
          expect(one_by_one(1000)).to eq "onethousand" 
      end
      it 'returns 9000  if number is 9000' do
          expect(one_by_one(9000)).to eq "ninethousand" 
      end
      it 'returns 9999  if number is 9999' do
          expect(one_by_one(9999)).to eq "ninethousandninehundredandninetynine" 
      end
      it 'returns 10000  if number is 10000' do
          expect(one_by_one(10000)).to eq "tenthousand" 
      end
      it 'returns 999999  if number is 999999' do
          expect(one_by_one(999999)).to eq "ninehundredandninetyninethousandninehundredandninetynine" 
      end
      it 'returns 1000000  if number is 1000000' do
          expect(one_by_one(1000000)).to eq "onemillion" 
      end
      it 'returns 999999999  if number is 999999999' do
          expect(one_by_one(999999999)).to eq "ninehundredandninetyninemillionninehundredandninetyninethousandninehundredandninetynine" 
      end
      it 'returns -1 if number is -1' do
          expect(number_to_word(-1)).to eq "Minusone" 
      end

      it 'returns -1 and -2 if number is -2' do
          expect(number_to_word(-2)).to eq "MinusoneMinustwo" 
      end      
end