require "scanf"
def encode(message, key)
  cont = []
  x = message.each_codepoint.to_a
  y = x.each do |y| y-=96
  cont << y
  end
  j =  key.to_s.scanf("%1d"*4)
  cont.inject([j]) do |array, item|
  array << array += item
  end
  

end

encode("scout", 1393)




