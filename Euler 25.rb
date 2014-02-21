=begin
The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the first term in the Fibonacci sequence to contain 1000 digits?
=end


fib_A = 1
fib_B = 1
fib_next = 0
tally = 2

while fib_next.to_s.size < 1000
  fib_next = fib_A + fib_B
  fib_A = fib_B
  fib_B = fib_next
  tally += 1
 end

puts tally