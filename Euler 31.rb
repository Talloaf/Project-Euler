=begin

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
It is possible to make £2 in the following way:

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?

=end

tally = 0

(0..200).each do |a|
	(0..100).each do |b|
		break if 200 < a + 2*b
		(0..40).each do |c|
			break if 200 < a + 2*b + 5*c
			(0..20).each do |d|
				break if 200 < a + 2*b + 5*c + 10*d
				(0..10).each do |e|
					break if 200 < a + 2*b + 5*c + 10*d + 20*e
					(0..4).each do |f|
						break if 200 < a + 2*b + 5*c + 10*d + 20*e + 50*f
						(0..2).each do |g|
							break if 200 < a + 2*b + 5*c + 10*d + 20*e + 50*f + 100*g
							(0..1).each do |h|
								tally += 1 if 200 == a + 2*b + 5*c + 10*d + 20*e + 50*f + 100*g + 200*h
							end
						end
					end
				end
			end
		end
	end
end

p tally