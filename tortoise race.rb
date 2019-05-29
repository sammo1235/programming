=begin
Two tortoises named A and B must run a race. A starts with an average speed of 720 feet per hour. Young B knows she runs faster than A, and furthermore has not finished her cabbage.

When she starts, at last, she can see that A has a 70 feet lead but B's speed is 850 feet per hour. How long will it take B to catch A?

More generally: given two speeds v1 (A's speed, integer > 0) and v2 (B's speed, integer > 0) and a lead g (integer > 0) how long will it take B to catch A?

The result will be an array [hour, min, sec] which is the time needed in hours, minutes and seconds (round down to the nearest second) or a string in some languages.

If v1 >= v2 then return nil, nothing, null, None or {-1, -1, -1} for C++, C, Go, Nim, [] for Kotlin or "-1 -1 -1".
Examples:

(form of the result depends on the language)

race(720, 850, 70) => [0, 32, 18] or "0 32 18"
race(80, 91, 37)   => [3, 21, 49] or "3 21 49"

** Hints for people who don't know how to convert to hours, minutes, seconds:

    Tortoises don't care about fractions of seconds

    Think of calculation by hand using only integers (in your code use or simulate integer division)

    or Google: "convert decimal time to hours minutes seconds"

=end

def race(v1, v2, g)
  if v1 > v2 
  return nil
  else
    fps1 = v1/3600.0
    fps2 = v2/3600.0
    secs = 0
    dc1 = g
    dc2 = 0
    until dc2 >= dc1 do
      dc1 += fps1
      dc2 += fps2
      secs += 1
    end 
    dec = secs / 3600.0
    p dec
    mins = (dec-dec.floor) * 60.0
    p mins.floor(2)
    seconds = (mins.floor(3)-mins.floor) * 59.999
    p seconds
    result = [dec.floor, mins.floor, seconds.floor]
    end
end


Test.assert_equals(race(720, 850, 70), [0, 32, 18])
Test.assert_equals(race(80, 91, 37), [3, 21, 49])
Test.assert_equals(race(80, 100, 40), [2, 0, 0])

def race(v1, v2, lead)
  return nil if v1 > v2
  time_in_seconds = (lead.fdiv(v2 - v1) * 3600).to_i
  hour = (time_in_seconds / 3600)
  min  = (time_in_seconds / 60 ) % 60
  sec  =  time_in_seconds % 60
  [hour,min,sec]
end

def race(v1, v2, g)
  return nil if v1 >= v2 
  Time.at(g * 3600 / (v2 - v1)).utc.strftime("%H:%M:%S").split(':').map(&:to_i)
end