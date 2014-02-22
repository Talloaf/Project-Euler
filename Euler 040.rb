=begin

An irrational decimal fraction is created by concatenating the positive integers:
0.123456789101112131415161718192021...
It can be seen that the 12th digit of the fractional part is 1.
If dn represents the nth digit of the fractional part, find the value of the following expression.
d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

=end

def d_of_n(n)
	return 1 if n == 10 #For whatever reason, 10 breaks my algorithm
	dig = 0
	(1..9).each do |each|
		dig = each
		count = each*9*(10**(each-1))
		break if n - count <= 0
		n -= count
	end

	return (n/dig + 10**(dig-1) - 1).to_s[n%dig-1].to_i

end



p d_of_n(1) * d_of_n(10) * d_of_n(100) * d_of_n(1000) * d_of_n(10000) * d_of_n(100000) * d_of_n(1000000)