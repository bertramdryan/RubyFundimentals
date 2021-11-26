def factoral_sum(num1)
  (2..num1).to_a.inject(:*).to_s.split(//).map(&:to_i).inject(:+)
end

p factoral_sum 5308345