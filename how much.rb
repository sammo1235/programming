def howmuch(m, n)
m,n=[m,n].sort
  nums = m..n
  arr = [] 
  nums.each do |i|
    if (i % 9 == 1) && (i % 7 == 2)
      c = i/9
      b = i/7
      arr << ["M: #{i}","B: #{b}","C: #{c}"]
    end
  end
  return arr
end


# ORRR just do this. 
def howmuch(m, n)
    ([[m,n].min,9].max..[m,n].max).select { |x| x % 9 == 1 && x % 7 == 2 }.map { |x| ["M: #{x}", "B: #{x/7}", "C: #{x/9}"] }
end


def howmuch(m, n)
  m,n=[m,n].sort
  b=nil
  c=nil
  result=[]
  (m..n).each do |x|
    (x-2)%7==0 ? b=(x-2)/7 : b=nil
    (x-1)%9==0 ? c=(x-1)/9 : c=nil 
    b and c ? result<<["M: #{x}","B: #{b}","C: #{c}"] : next
  end
  result
  
end

#nice use of select

def howmuch(m, n)
    if m > n
      m, n = n, m
    end
    (m..n).select {|num| num % 9 == 1 && num % 7 == 2}.map do |num|
    ["M: #{num}", "B: #{(num - 2) / 7}", "C: #{(num - 1) / 9}"]
    end
end