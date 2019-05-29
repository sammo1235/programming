def peaceful_yard(y, d)
  def get_squares(y, cat)
      count = 0; positions = []; y.each do |i|; bar = i.split(''); if bar.include?(cat)
      positions << count; positions << i.index(cat); count += 1; 
      else; count+=1; end; end; return positions 
  end
  def comp_squares(x, y, d)
  res = []; sq = []; p d
      if x.empty? == false && y.empty? == false
        sq << ((x[0] - y[0])**2) + ((x[1] - y[1])**2); 
          if (Math.sqrt(sq[0])) >= d; res << true
          else res << false; end
      else res << true; end; p res
        if res.count(false) >= 1; return false; else return true; end
  end
  lc = get_squares(y, "L"); mc = get_squares(y, "M"); rc = get_squares(y, "R")
  a = []; a << comp_squares(lc, mc, d);  a << comp_squares(mc, rc, d); a << comp_squares(lc, rc, d)
  if a.count(false) >= 1; return false; else return true; end
end


peaceful_yard(["------------", "------------", "-L----------", "------------", "------------", "------------"], 10)