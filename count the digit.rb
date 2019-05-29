def nb_dig(n, d)
  a = Array.new(n) { |n| n**2 }
  
  e = d.to_s
 
  b = []
  g = []
  a.each do |i|
    c = i.to_s.split('')
    f = c.select{|v| v == e}
    b << f
  end
   p a.join.count d.to_s
  for x in b
    if x.length > 0
    g << x
    
  end
  end
  p g.join
  g.join.length
end


def nb_dig(n, d)
  a = Array.new(n) { |n| n**2 }.join.count d.to_s
end