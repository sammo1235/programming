def points(games)
n = 0
score = 0
while n < 10
  if (games[n][0].to_i) > (games[n][2].to_i)
  score += 3
  n += 1
  elsif games[n][0].to_i == games[n][2].to_i
  score -= 1
  n += 1
  else 
  n+=1
  end
  end
  score
end

points(['1:0','2:0','3:0','4:0','2:1','3:1','4:1','3:2','4:2','4:3'])