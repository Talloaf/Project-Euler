=begin

Take the number 192 and multiply it by each of 1, 2, and 3:

192 × 1 = 192
192 × 2 = 384
192 × 3 = 576
By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)

The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?

=end

def concatenate(num)
	string = ""
	array = []
	(1..9).each do |x|
		string += (num*x).to_s
		array = string.split(//)
		break if array.include?("0") || array.size >= 9 || array.size != array.uniq.size
	end
	return (!array.include?("0") && array.size == 9 && array.uniq.size == 9 ? string.to_i : 0)
end

largest = 0
(1..9876).each do |n|
	num = concatenate(n)
	largest = num if num > largest
end

p largest