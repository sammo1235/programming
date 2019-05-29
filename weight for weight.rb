def order_weight(strng)
  a = []
  strng.split(' ').each do |i|
    if i.to_i.digits.sum < a.first.to_i.digits.sum
      p i.to_i.digits.sum
      a.insert(0,i)
    else
      a.append(i)
    end
  end
  a.join(' ')
end