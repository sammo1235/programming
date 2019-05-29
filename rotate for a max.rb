def max_rot(n)
  a = n.to_s.split('').shift
  p n.to_s.split.append(a).join
end


max_rot(38458215)