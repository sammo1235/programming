def accum(s)
  f = s.split('')
  f.map!.with_index { |x, i| "#{x.upcase}" + "#{x.downcase * i}" }
  puts f.join("-")
end

accum("ZpglnRxqenU")