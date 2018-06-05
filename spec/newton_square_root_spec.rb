require "/Users/apple/Documents/ruby/quiz/newton_square_root.rb"

describe 'Newton Square Root Metohod testing' do

      it 'Minimum number testing 0. ' do
          expect(newton_square_root(0)).to eq 0 
      end
      it 'Square root of 1 is 1. ' do
          expect(newton_square_root(1)).to eq 1 
      end
      it 'Square root of 2 is 2. ' do
          expect(newton_square_root(2)).to eq 1.414213562373095 
      end
      it 'Square root of 3 is 1. ' do
          expect(newton_square_root(3)).to eq 1.7320508075688772 
      end
      it 'Square root of 4 is 2. ' do
          expect(newton_square_root(4)).to eq 2 
      end
      it 'Square root of 49 is 7. ' do
          expect(newton_square_root(49)).to eq 7 
      end      
      it 'Square root of -1 is -1. ' do
          expect(newton_square_root(-1)).to eq 0 
      end
      it 'Square root of -31 is . ' do
          expect(newton_square_root(-31)).to eq 0 
      end
      it 'Square root of -311 is 1. ' do
          expect(newton_square_root(-311)).to eq 0 
      end
      it 'Square root of 123450 is 1. ' do
          expect(newton_square_root(123450)).to eq 351.35452181521725 
      end
      it 'Square root of 12.34 is 1. ' do
          expect(newton_square_root(12.34)).to eq 3.5128336140500593 
      end 
      it 'Square root of 0.09 is 1. ' do
          expect(newton_square_root(0.09)).to eq 0.3 
      end     
end