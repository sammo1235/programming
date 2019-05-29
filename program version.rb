def args_to_string args
    args.map do |key, value|
        value ? "#{key.length > 1 ? "--" : "-"}#{key} #{value}" : key
    end.join " "
end

def args_to_string args
  res = []
  args.each do |i|
    if i.is_a? Array
      if i.length > 1
        if i[0].length > 1
        res << "--" + i[0] + " " + i[1]
        else
        res << "-" + i[0] + " " + i[1]
        end
      else
        res << i
      end
    else
      res << "#{i}"
    end
  end
  p res.join(' ')
end