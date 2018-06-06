

# In England the currency is made up of pound, £, and rupee_coin, p, and there are eight coins in general circulation:

#     1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

# It is possible to make £2 in the following way:

#     1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

# How many different ways can £2 be made using any number of coins?


# def coin_permutation(coin_arr)
#   new_coin_permutaion_arr = coin_arr.permutation(4).to_a
#   new_coin_permutaion_arr 
# end

# def looping_over_permutations(coin_arr,amount)
#   final_arr = Array.new
#   new_coin_permutaion_arr = coin_permutation(coin_arr)
#   minimum_coin = coin_arr.min
#   max_iterator = amount/minimum_coin
#   new_coin_permutaion_arr.each do |i|
#     #puts "permutation is #{i}"
#      for loopin in 1..max_iterator
#       sum = 0
#       temp_arr = Array.new
#       for iterator in 0 .. i.length-1
#         #puts "Inside the array #{i[iterator] * loopin}"
#         sum = sum + i[iterator] * loopin
#         temp_arr << i[iterator]
#         temp_arr << i[iterator] * loopin
#                 if sum == amount
#                   puts "This number matches#{sum} and the array is #{i[iterator]} and #{loopin} and i is #{i} and temp_arr equal #{temp_arr}"
#                 end
#       end
#       if sum == amount
#         #puts "This number matches#{sum}"
#       end
#       final_arr << i
#     end
#   end
#   #puts "Final array is #{final_arr}"
#   puts "Total count is #{final_arr.length}"
# end




# coin_arr = [1,2,5,10]
# #print "Enter the end number:"
# #n = gets.strip.to_i
# n = 54
# looping_over_permutations(coin_arr,n)




class CoinCounter
  def initialize(coins)
    @coins = coins.sort   
  end
   
  private
    def count_combos(amount, pos)
      return (amount % @coins[pos] == 0 ? 1 : 0) if (pos == 0)
      (0..amount/@coins[pos].floor).inject(0) { |sum, count| sum + count_combos(amount - count * @coins[pos], pos-1) }  
    end
     
  public
    def coin_combinations(amount)
      count_combos(amount, @coins.length-1)
    end
end
 
cc = CoinCounter.new([1,2,5,10,20,50,100,200])
timer_start = Time.now
puts cc.coin_combinations(200)
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"

