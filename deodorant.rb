def evaporator(content, evap_per_day, threshold)
  days = 0
  x = content
 while content > (x * threshold / 100)
    content -= (content.to_f * evap_per_day / 100)
    p content.round(2)
    days += 1
  end
  p days
end

evaporator(10, 10, 5)