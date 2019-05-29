def find_short(s)
    g = s.split.min { |x,y| x.size <=> y.size }
    l = g.size
    return l # l: length of the shortest word
end


p find_short("bitcoin take over the world maybe who knows perhaps")