=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=end

solution_found = false
palindrome = 999999   #999**2 is a 6-digit number

until solution_found == true
  palindrome -= 11  #all 6-digit palindromes are divisible by 11
  palindrome_string = String(palindrome)
  if palindrome_string == palindrome_string.reverse
    for x in (100..999).to_a.reverse
      if palindrome % x == 0
        for y in (100..999).to_a.reverse
          if x*y == palindrome
              solution_found = true
          end
        end  
      end
    end
  end
end

puts palindrome
