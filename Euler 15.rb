=begin
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

....diagrams....

How many such routes are there through a 20×20 grid?
=end

matrix = Array.new(21) { Array.new(21, 0) }

matrix[0].collect! {|i| i = 1}
(0..20).each {|i| matrix[i][0] = 1}

(0..20).each do |x|
	(0..20).each do |y|
		matrix[x][y] = matrix[x-1][y] + matrix [x][y-1] unless matrix[x-1][y] == 0 || matrix [x][y-1] == 0 || matrix[x][y] != 0
	end
end

puts matrix[20][20]