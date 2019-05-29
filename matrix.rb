def diagonal(matrix)
  l = matrix[0].length
  d = 0
  u = l-1
  pri = matrix[d][d]
  sec = matrix[d][u]
  while d < l-1
    pri += matrix[d+1][d+1]
    sec += matrix[d+1][u-1]
    d += 1
    u -= 1
  end
  p pri
  p sec
  if pri > sec
  p "Principal Diagonal win!"
  elsif pri < sec 
  p "Secondary Diagonal win!"
  else
  p "Draw!"
  end
end


 diagonal([
[9, 1, 1], 
[4, 9, 5], 
[1, 1, 1] ]) 

 diagonal([
[2, 2, 2], 
[4, 2, 6], 
[1, 8, 2] ])

 diagonal([
[1, 2, 5], 
[4, 9, 6], 
[1, 8, 5] ])

#ORRR All of that in one line of code
require 'matrix'
def diagonal m
  ['Draw!', 'Principal Diagonal win!', 'Secondary Diagonal win!'][Matrix[*m].tr <=> Matrix[*m.reverse].tr]
end

p diagonal([
[9, 1, 1], 
[4, 9, 5], 
[1, 1, 1] ]) 

diagonal([
[2, 2, 2], 
[4, 2, 6], 
[1, 8, 2] ])

diagonal([
[1, 2, 5], 
[4, 9, 6], 
[1, 8, 5] ])
