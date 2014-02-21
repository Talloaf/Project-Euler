=begin

An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

=end

def d_of_n(n)

end

def max_chars(n)
	max = 0
	(1..9).each do |n|
		count += n*9*(10**(n-1))
		return count -= n*9*(10**(n-1)) if count > n
	end
end

p count