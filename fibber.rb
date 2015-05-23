quantity = 15

def fibonacci(quantity)
  (1..quantity-2).inject([0, 1]) { |fibs, n| fibs << (fibs[-1] + fibs[-2]) }
end

# Challenge 1

fibonacci(quantity).each_slice(5) do |a,b,c,d,e|
  p [a,b,c,d,e].join(", ")
 end

# Challenge 2

fibonacci(quantity).each_slice(5) do |a,b,c,d,e|
  p [a,b,c,d,e].map{ |fibs| fibs.to_s.rjust(4) }.join(", ")
end
