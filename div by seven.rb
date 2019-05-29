# if 10x + y
# take the last digit from the number and subtract it twice from the remaining number. so for 371 you take 1 off the end, double it, and subtract it from 37. If the answer (35) is divisible by 7 then you know the starting number (371) is div by 7 too. Your final result must be at most 2 digits long

you want a loop
  which pops the end number off, doubles it, and subtracts it from the main number
    checks if that answer is div by 7 (modulo 7 == 0?)
    count plus one for the steps.
    return final answer.