#Number pyramid is a recursive structure where each next row is constructed by adding adjacent values of the current row. For example:

Row 1     [1     2     3     4]
Row 2        [3     5     7]
Row 3           [8    12]
Row 4             [20]

#Task
#Given the first row of the number pyramid, find the value stored in its last row.

#Examples
#reduce_pyramid([1])        ==  1
#reduce_pyramid([3, 5])     ==  8
#reduce_pyramid([3, 9, 4])  ==  25

# this was tricky, because recursive algos wouldn't pass codewars big tests (arrays over 10,000 in size):

def reduce_pyramid(base)
    until base.length == 1
      base = base.each_cons(2).with_object([]) { |a, i| i << a.sum }
    end
    base.join.to_i
end

#the linear solution. much faster

def reduce_pyramid(base)
  factors = [1]
  n=base.length-1
  (0..n-1).each do |k|
    factors.push(factors[k] * (n-k) / (k+1))
  end
  base.map{|k| factors.shift * k}.inject(:+)
end