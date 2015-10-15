# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution
$dictionary = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "ninteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

def commaNumber(num)
  num_s = num.to_s.reverse
  num_arr = num_s.split("")
  num_arr_comma = []
  counter = 0
  num_arr.each do |digit|
    if counter <3
      num_arr_comma.unshift(digit)
      counter +=1
    elsif counter ==3
      num_arr_comma.unshift(',')
      num_arr_comma.unshift(digit)
      counter = 1
    end
  end
  num_arr_comma.delete_at(0) if num_arr_comma[0] ==','
  num_arr_comma.join()
end

def translate(num)
  num_s = commaNumber(num)


end

def thousandToEng(str)

end


# Refactored Solution






# Reflection