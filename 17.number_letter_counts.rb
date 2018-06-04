 

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.


def convert_to_word(number)
  numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
      if number == 0
            return ""
      end

      numbers_to_name.each do |num, name|
            if num == number
                  return name
            end
      end

end

def three_digit_check(num)
      str = ""
      while (num >= 0)
            if num > 100 and num % 100 != 0
                  num1 = num / 100
                  str = "#{convert_to_word(num1)}hundredand"
                  num = num % 100
                  puts "Number #{num}"
            elsif num >= 100 and num % 100 == 0
                  num1 = num / 100
                  str = "#{convert_to_word(num1)}hundred"
                  num = num % 100
                  puts "Number #{num}"
            elsif num < 100 and num >= 90
                  str = "#{str}#{convert_to_word(90)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num < 90 and num >= 80
                  str = "#{str}#{convert_to_word(80)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num < 80 and num >= 70
                  str = "#{str}#{convert_to_word(70)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num < 70 and num >= 60
                  str = "#{str}#{convert_to_word(60)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num < 60 and num >= 50
                  str = "#{str}#{convert_to_word(50)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num < 50 and num >= 40
                  str = "#{str}#{convert_to_word(40)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num < 40 and num >= 30
                  str = "#{str}#{convert_to_word(30)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num < 30 and num >= 20
                  str = "#{str}#{convert_to_word(20)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num > 20
                  num1 = num / 10
                  str = "#{str}#{convert_to_word(num1)}"
                  num = num % 10  
                  puts "Number #{num}"
            elsif num <= 20
                  str = "#{str}#{convert_to_word(num)}"
                  break
                  puts "Number #{num}"
            end
      end
      #puts str
      return str
end      

def one_by_one(num)
      str = ""
      number = num 
      while (number != 0)
            if num >= 1000000 and number != 0
                  num1 = num / 1000000
                  str = "#{three_digit_check(num1)}million"
                  num = num % 1000000
                  puts "String main #{str}"
                  puts "Number now = #{num}"
            elsif num >= 1000
                  num1 = num / 1000
                  str = "#{str}#{three_digit_check(num1)}thousand"
                  num = num % 1000
                  puts "Number now = #{num}"
            else
                  num1 = num
                  str = "#{str}#{three_digit_check(num1)}"
                  puts "Number now = #{str}"

                  number = 0     
            end
      end
      return str
end



def number_to_word(num)
      final_str = ""

      # final_str = "#{final_str}#{one_by_one(num)}"
      org_num = num 
      if num < 0 
            num = num * (-1)
      end

      for i in 1 .. num
            if org_num == 0
                  final_str = "#{final_str}#{one_by_one(i)}"
            elsif org_num < 0
                  final_str = "#{final_str}Minus#{one_by_one(i)}"
            else
                  final_str = "#{final_str}#{one_by_one(i)}"
            end
            # final_str = "#{final_str}#{one_by_one(i)}"
      end      
      puts "final output is #{final_str}"
      puts "Length = #{final_str.length}"
      return final_str
end

print "Enter the end number:"
num = gets.strip.to_i
number_to_word(num)
#puts one_by_one(num)
