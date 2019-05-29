def count_sheep(num)
 sheeps = ""
  for i in 1..num
    sheeps << i.to_s + (" sheep...")  
  end
  sheeps
end

count_sheep(1)
puts count_sheep(3)

#also these 

def count_sheep(num)
  (1..num).map {|i| "#{i} sheep..."}.join
end

def count_sheep(num)
  (1..num).reduce("") {|acc, e| acc += "#{e} sheep..."}
end

def count_sheep(number)
  (1..number).each_with_object('') do |integer, string|
    string.concat("#{integer} sheep...") 
  end
end