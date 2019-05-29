def encrypt_this(t)
  t == nil ? "" : w = t.split; sent = []; w.each do |i|
    if i.length == 1; sent << i.ord; elsif i.length == 2; sent << "#{i[0].ord}" + "#{i[1]}"
    else; o = i.split(''); asc = o.shift.ord; fst = o.last; lst = o.first; sectl = []; num = o.length-2; sectl << o.slice(1..num)
    sent << word = "#{asc.to_s}" + "#{fst}" + "#{sectl.join}" + "#{lst}"
    end
  end
 sent.join(' ')
end

def encrypt_this(text)
  text.split.map { |word|
    word[1], word[-1] = word[-1], word[1] if word.size > 2
    word[0] = word[0].ord.to_s
    word
  } .join(' ')
end
