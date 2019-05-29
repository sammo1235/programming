#these functions do the same thing
#the top one was my submission but the bottom ones
#show how the same can be achieved in a much more concise fashion



def descending_order(n)
  x = n.to_s.split('')
  y = x.sort.reverse
  z = y.join.to_i
  puts z
end


descending_order(123782374827443)



def descending_order(n)
  n.digits.sort.reverse.join.to_i  
end

def descending_order(n)
  n.to_s.split("").sort { |x,y| y <=> x }.join.to_i
end