def compose(s1, s2)
    x = s1.split("\n")
    a = s2.split("\n")
    #length of one section of string
    f = x[0].length

    array = []
    #stupid counters 
    v = 0
    s = -1
      while v <= f-1
      array << x[v].slice(0..v) + a[f+s].slice(0..f+s) + "\n"
      v += 1
      s -= 1
      end
    p array.join.chomp("\n")
end


compose("byGt\nhTts\nRTFF\nCnnI", "jIRl\nViBu\nrWOb\nNkTB")

def compose(s1, s2)
  s1, s2 = s1.split, s2.split.reverse
  (0...s1.size).map { |n| s1[n][0..n] + s2[n][0..-(n + 1)] }.join("\n")
end

=begin
A squared string is a string of n lines, each substring being n characters long. We are given two n-squared strings. For example:

s1 = "abcd\nefgh\nijkl\nmnop" s2 = "qrst\nuvwx\nyz12\n3456"

Let us build a new string strng of size (n + 1) x n in the following way:

    The first line of strng has the first char of the first line of s1 plus the chars of the last line of s2.
    The second line of strng has the first two chars of the second line of s1 plus the chars of the penultimate line of s2 except the last char
    and so on until the nth line of strng has the n chars of the nth line of s1 plus the first char of the first line of s2.
=end