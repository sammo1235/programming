#this one was an arsehole because it wanted me to not create a new line after the square. I used this stupid equation when I shouldn've jsut used chop after a * n square, like in the below example.

def build(n)
  puts ("+" * n + "\n") * (n-1) + ("+" * n)
end

build(5)


def generate_shape(n)
  ("#{"+" * n}\n" * n).chop
end