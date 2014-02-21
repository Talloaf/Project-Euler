=begin

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

=end

product_array = []

(2..79).each do |x|
	array_x = x.to_s.split(//)
	next if array_x.include?("0") || array_x[-1] == "1" || array_x.uniq.size != x.to_s.length

	(123..9876).each do |y|
		array_y = y.to_s.split(//)
		next if array_y.include?("0") || array_y[-1] == "1" || (x*y).to_s.length > 4 || array_y.uniq.size != y.to_s.length

		array_z = (x*y).to_s.split(//)
		next if array_z.include?("0") || array_z.uniq.size != (x*y).to_s.length

		array = array_x + array_y + array_z
		next if array.uniq.size != array.size
		next if array.uniq.size != 9
		product_array << x*y
	end
end

p product_array.uniq.inject(:+)