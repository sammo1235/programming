

def sum_mix(x)
  a = 0
  
  y = x.join
  
  z = y.to_s.split(//).map{|chr| chr.to_i}

  for i in z
    a += i
    end
end

# this is my final solution, it takes negatives into account by checking if integer
#if it isn't it gets converted to one

def sum_mix2(x)
  b = 0
  for i in x
    if i == Integer
    b += i
    else
    b += i.to_i
  end
  
end
puts b
end

#also there's these short beauties

def sum_mix3(x)
  x.map(&:to_i).inject(:+)
end

def sum_mix4(x)
  x.sum(&:to_i)
end


#sum_mix2([9, 3, '7', '3'])
sum_mix4([9, 3, '7', '3'])

=begin
def sum_mix(x)
  y = x.to_s.split('').map{|chr| chr.to_i}
  p y
end

sum_mix([9, 3, '7', '3'])
=end