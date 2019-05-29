def special_primes(n)
  require 'prime'; primes = []; squares = []; multsquares = []
  (2..20).each do |i|; squares << i**2; end
  squares.each do |i|
    (1..9).each do |a|
    multsquares << i * a
    end
  end
  (0..n).each do |i|
    iarr = i.digits.reverse 
    if Prime.prime?(i) == true && iarr.length >= 3 && iarr.include?(0) == false && multsquares.include?(iarr.sum) == true && iarr[0]* iarr.last != 45 && iarr.uniq.length == iarr.length
    primes << i
    end
  end
  up = []; down = []; bouncy = []
  primes.each do |i|
    c = i.digits.reverse
      if c.sort == c
        up << c.join.to_i
      elsif c.sort.reverse == c
        down << c.join.to_i
      else
        bouncy << c.join.to_i
      end
    end
  if up.empty? == true && down.empty? == true && bouncy.empty? == true
    return [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
  else
    return fin = [bouncy.min, bouncy.max, bouncy.length], [up.min, up.max, up.length], [down.min, down.max, down.length]
  end
end