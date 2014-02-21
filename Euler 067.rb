=begin
By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom in triangle.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.

NOTE: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether!
If you could check one trillion (10^12) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)
=end


def max_sum_path (filename)
	tri_array = File.open(filename) {|io| io.inject([]) {|a, line| a << line.split(/\n/)} }
	num_of_rows = tri_array.size

	(0...num_of_rows).each do |x|
		tri_array[x] = tri_array[x][0].split(/ /)
		tri_array[x].map! {|y| y.to_i}
	end

	(num_of_rows-2).downto(0).each do |y|
		(0..y).each do |x|
			tri_array[y][x] += ( tri_array[y+1][x] > tri_array[y+1][x+1] ? tri_array[y+1][x] : tri_array[y+1][x+1] )
		end
	end

	return tri_array[0][0]
end

puts max_sum_path("Euler 67.txt")