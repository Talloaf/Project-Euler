=begin

The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

=end

def curious_fraction(num, den)
	a = false
	num_array = num.to_s.split(//)
	den_array = den.to_s.split(//)
	num_array.map! {|i| i.to_i}
	den_array.map! {|h| h.to_i}
	num_short = 0
	den_short = 0
	(1..9).each do |x|
		if num_array.include?(x) && den_array.include?(x)
			num_array.delete(x)
			den_array.delete(x)
			num_short = num_array[0]
			den_short = den_array[0]
			a = true
			break
		end
	end
	return (a && (num*1000/den) == (num_short*1000/den_short) ? true : false )
end

array = []

(12..98).each do |num|
	next if num % 10 == 0 || num % 11 == 0
	((num+1)..99).each do |den|
		next if den % 10 == 0 || den % 11 == 0
		array << [num, den] if curious_fraction(num, den)
	end
end

num_product = []
den_product = []
array.each {|x| num_product << x[0]}
array.each {|x| den_product << x[1]}
num_prod = num_product.inject(:*)
den_prod = den_product.inject(:*)

p den_prod / num_prod.gcd(den_prod)