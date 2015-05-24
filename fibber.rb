puts "Please enter the number of places to which I should generate the Fibonacci sequence."

quantity = gets.chomp!.to_i

def fibonacci(quantity)
  (1..quantity-2).inject([0, 1]) { |fibs, n| fibs << (fibs[-1] + fibs[-2]) }
end

puts "\nChallenge 1"

fibonacci(quantity).each_slice(5) do |a,b,c,d,e|
  puts [a,b,c,d,e].join(", ")
 end

puts "\nChallenge 2"

fibonacci(quantity).each_slice(5) do |a,b,c,d,e|
  puts [a,b,c,d,e].map{ |fib| fib.to_s.rjust(4) }.join(", ")
end

puts "\nChallenge 3"

fibs = fibonacci(quantity)
max_length = fibs.map { |fib| fib.to_s.length }.max
fibs.each_slice(5) do |a,b,c,d,e|
  puts [a,b,c,d,e].map{ |fib| fib.to_s }.map{ |fib| fib.rjust(max_length + 1) }.join(", ")
end
