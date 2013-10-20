s = "Hello: I`m a l33t programmer!!"


print s.split(/[^a-zA-Z]/).reject{|e| e == "I" || e.empty?}
puts 1111111
print  s.split(/[^a-zA-Z]/).reject{|e| e == "I"}

puts 22222222222
print  s.scan(/[a-zA-Z]/).reject{|e| e == "I" || e.empty?}

puts 3333333333333
print  s.split(/[^a-z^A-Z]/).reject{|e| e == "I"}