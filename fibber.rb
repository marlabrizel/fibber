quantity = 15

(1..quantity-2).inject([0, 1]) { |fibs, n| fibs << (fibs[-1] + fibs[-2]) }
