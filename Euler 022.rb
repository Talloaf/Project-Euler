=begin

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order.
Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

=end


def alphabetical_position(file)

	names = File.read(file).gsub(/\"/,'').split(/,/).sort
	total = 0
	(0...names.size).each do |x|
		letter_hash = {
			"A" => 1,
			"B" => 2,
			"C" => 3,
			"D" => 4,
			"E" => 5,
			"F" => 6,
			"G" => 7,
			"H" => 8,
			"I" => 9,
			"J" => 10,
			"K" => 11,
			"L" => 12,
			"M" => 13,
			"N" => 14,
			"O" => 15,
			"P" => 16,
			"Q" => 17,
			"R" => 18,
			"S" => 19,
			"T" => 20,
			"U" => 21,
			"V" => 22,
			"W" => 23,
			"X" => 24,
			"Y" => 25,
			"Z" => 26
		}

		name = names[x].split(//)
		name_total = 0
		name.each {|y| name_total += letter_hash[y]}
		total += (x+1) * name_total
	end
	total
end

puts alphabetical_position("Euler 022.txt")