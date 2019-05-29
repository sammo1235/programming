def remove_duplicate_words(s)
  s.split.uniq.join(' ')
end

remove_duplicate_words("alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta")
remove_duplicate_words("my cat is my cat fat")