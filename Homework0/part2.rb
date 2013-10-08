def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.empty?
  return false if !s.match(/\A[A-Za-z]/)
  return false if s.downcase.match( /\A(a|e|i|o|u)/)
  return true
end

def binary_multiple_of_4?(s)
  return false if !s.match(/\A(0|1)*.0{2}\z/)
  return true
end

