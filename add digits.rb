# so this kata had a horrible description but someone in the discussion summed it up much more clearly. It basically comes to this: "find the number of occurances of digit d in all numbers from 0 to n squared". 


# So what my solution does is just make an array of all of the squares, join them all together and then count how many integers (d) there are in that one string. That's all it is.

def nb_dig(n, d)
  a = Array.new(n+1) { |n| n**2 }.join.count d.to_s
end

# decoding other solutions:

def nb_dig(n, d)
  (0..n).map { |k| k ** 2 }.join.count d.to_s
end

#this is the same as mine except range 0..n is used instead, as well as .map, which just produces an array from all the numbers in the range according to the instruction in the block (which is identical to mine).

def nb_dig(n, d)
  0.upto(n).inject(0) { |sum, k| sum += (k**2).to_s.count(d.to_s) }
end

# again, essentially the same thing but worth noting for the use of inject, which I'm not that commfortable with yet. It looks as though 0 becomes sum and then every square (k**2) gets added += to that. Then it's put to string and counted as with the other two exammples, but the difference here is that it's all done in the same block.

