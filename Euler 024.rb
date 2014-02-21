=begin

A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

=end


@@tally = 0


def total(place)
	num_tries = 0
	z = (1..place).to_a.inject(:*)
	if @@tally + z < 1_000_000
		@@tally += z
		return true
	end
	return false
end


def permutations
	(0..9).each do |a|
		next if total(9)

		(0..9).each do |b|
			next if [a,b].uniq.size != 2|| total(8)

			(0..9).each do |c|
				next if [a,b,c].uniq.size != 3 || total(7)				

				(0..9).each do |d|
					next if  [a,b,c,d].uniq.size != 4 || total(6)
					
					(0..9).each do |e|
						next if [a,b,c,d,e].uniq.size != 5 || total(5)
					
						(0..9).each do |f|
							next if [a,b,c,d,e,f].uniq.size != 6 || total(4)

							(0..9).each do |g|
								next if [a,b,c,d,e,f,g].uniq.size != 7 || total(3)

								(0..9).each do |h|
									next if [a,b,c,d,e,f,g,h].uniq.size != 8 || total(2)

									(0..9).each do |i|
										next if [a,b,c,d,e,f,g,h,i].uniq.size != 9 || total(1)

										(0..9).each do |j|
											next if [a,b,c,d,e,f,g,h,i,j].uniq.size != 10
											return "#{a}#{b}#{c}#{d}#{e}#{f}#{g}#{h}#{i}#{j}"

										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end


puts permutations
