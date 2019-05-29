require 'prime'
def step(g, m, n)
    arr = []
    (m..n).each do |i|; c = i+g
      if a = Prime.prime?(i) == true &&  Prime.prime?(c) == true; arr << i; arr << c; end
      break if arr.empty? == false
    end 
    if arr.empty?; return nil; else; arr end
end