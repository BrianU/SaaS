def hello(name)
    puts "Hello, #{name}"
end

def starts_with_consonant(s)
    vowels=["a", "e", "i", "o", "u"]
    vowels.each do |x| 
        puts "#{x} is a vowel"
    end
    puts s\
end

starts_with_consonant("arsehole") 
