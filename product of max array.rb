def max_product(numbers, size)
  k = numbers.sort.reverse[0..size-1]
  y = k.inject(:*)
  y
end


max_product([4,3,5], 2)

#also

def max_product(numbers, size)
  numbers.max(size).inject(:*)
end