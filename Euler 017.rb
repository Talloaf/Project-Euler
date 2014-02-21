=begin
	
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters.
The use of "and" when writing out numbers is in compliance with British usage.
	
=end

 num_names = {
 	1000 => "onethousand",
 	900 => "ninehundred",
 	800 => "eighthundred",
 	700 => "sevenhundred",
 	600 => "sixhundred",
 	500 => "fivehundred",
 	400 => "fourhundred",
 	300 => "threehundred",
 	200 => "twohundred",
 	100 => "onehundred",
 	90 => "ninety",
 	80 => "eighty",
 	70 => "seventy",
 	60 => "sixty",
 	50 => "fifty",
 	40 => "forty",
 	30 => "thirty",
 	20 => "twenty",
 	19 => "nineteen",
 	18 => "eighteen",
 	17 => "seventeen",
 	16 => "sixteen",
 	15 => "fifteen",
 	14 => "fourteen",
 	13 => "thirteen",
 	12 => "twelve",
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
 	1 => "one",
 	0 => ""
 }

num_string = String.new
num_array = Array.new

(1..1000).each do |x|
	if num_names[x]
		num_string << num_names[x]# + '/'
	elsif 20 < x && x < 100
		num_array = x.to_s.split(//)
		num_array.collect! {|y| y.to_i}
		num_string << "#{num_names[num_array[0]*10]}#{num_names[num_array[1]]}"
	else
		num_string << "#{num_names[x.to_s[0].to_i * 100]}and"
		num_array = x.to_s.split(//)
		num_array.collect! {|y| y.to_i}
		z = num_array[1]*10 + num_array[2]
		if num_names[z]
			num_string << num_names[z]# + '/'
		else
			num_string << "#{num_names[num_array[1]*10]}#{num_names[num_array[2]]}"	
		end
	end
			

end

puts num_string.length