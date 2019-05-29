def hex_word_sum(s)
    if s.empty?
      return 0
      else
      y = s.gsub(/[SO]/, 'S' => 5, 'O' => 0)
      x = y.split(" ")
      p x
      z = x.to_i(16)
      p y
      p x
      p z
      end
    s.each do |i|
      if i.include? "K"
      s.delete
      p s
      end
    end
end


hex_word_sum('DO YOU SEE THAT BEE DRINKING DECAF COFFEE')
hex_word_sum('ASSESS ANY BAD CODE AND TRY AGAIN')

=begin
elsif s.include?("GHIJKLMNPQRTUVWXYZ")
 if i.include?"G, H, I, J, K, L, M, N, P, Q, R, T, U, V, W, X, Y, Z"
  i.delete
  puts i
  else

w.reject{|u| u.include? "G, H, I, J, K, L, M, N, P, Q, R, T, U, V, W, X, Y, Z"}.each do |i|
      final << i.to_i(16)
  end

=end