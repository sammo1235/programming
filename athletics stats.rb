def stat(strg)
  p = strg.split(",")
  f = []
  dec1 = []
  p.each do |i|
    f << i.split("|")
  end
  #get decimals
  f.each do |g|
    dec1 << g[0].to_i+(g[1].to_i/60.0)+(g[2].to_i/3600.0) 
  end
  #decimal to time methods
  def dec_to_hours(x)
    if x.floor.to_s.length == 1
      return "0"+"#{x.floor}"
    else return x.floor
    end
  end

  def dec_to_minutes(x)
    y = (x-x.floor)*60
    if y.floor.to_s.length == 1
      return "0"+"#{y.floor}"
    else return y.floor
    end
  end

  def dec_to_seconds(x)
    y = (x-x.floor)*60
    z = (y-y.floor)*60.001
      p "z = #{z}"
    if z.floor.to_s.length == 1
      return "0"+"#{z.round}"
    elsif z.round == 60
      return z.floor
    else return z.floor
    end
  end
  #range calcs
  ran = dec1.max - dec1.min
  hour_ran = dec_to_hours(ran)
  min_ran = dec_to_minutes(ran)
  sec_ran = dec_to_seconds(ran)
  #mean calcs
  mean = dec1.sum / dec1.length
  hourav = dec_to_hours(mean)
  minav = dec_to_minutes(mean)
  secsav = dec_to_seconds(mean)
  #get median
  dec1.sort!
  elements = dec1.count
  center =  elements/2
  median = elements.even? ? (dec1[(dec1.length/2)-1] + dec1[(dec1.length/2)]) /2 : dec1[center]
  hour_median = dec_to_hours(median)
  min_median = dec_to_minutes(median)
  sec_median = dec_to_seconds(median)
  #to output
  range = "Range: #{hour_ran}|#{min_ran}|#{sec_ran}"
  aver = "Average: #{hourav}|#{minav}|#{secsav}"
  med = "Median: #{hour_median}|#{min_median}|#{sec_median}"
 p "#{range} #{aver} #{med}"
end
  
stat("01|15|59, 1|47|16, 01|17|20, 1|32|34, 2|17|17")