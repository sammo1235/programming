def getIssuer(number)
  if number.to_s.start_with?("4") && (number.to_s.length == 13 || number.to_s.length == 16)
  return "VISA"
  elsif (number.to_s.start_with?("34") || number.to_s.start_with?("37")) && number.to_s.length == 15
  return "AMEX"
  elsif number.to_s.start_with?("6011") && number.to_s.length == 16
  return "Discover"
  elsif number.to_s.start_with?("51", "52", "53", "54", "55") && number.to_s.length == 16
  return "Mastercard"
  else
  return "Unknown"  
  end
end

puts getIssuer(52111111111111111)


# better way of doing this

def getIssuer(number)
  case number.to_s
  when /^3[4|7]\d{13}$/     then 'AMEX'
  when /^6011\d{12}$/       then 'Discover'
  when /^5[1-5]\d{14}$/     then 'Mastercard'
  when /^4(\d{12}|\d{15})$/ then 'VISA'
  else 'Unknown'
  end
end