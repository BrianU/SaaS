module FunWithStrings

  @@anagram_groups = Hash.new

  def palindrome?
    return true if self.downcase.gsub(/[^0-9a-z]/i, '') == self.downcase.reverse.gsub(/[^0-9a-z]/i, '')
    return false
  end
  def count_words
    words = Hash.new
    self.lstrip.downcase.delete('^a-zA-Z ').split(/\s+(?=(?:[^"]*"[^"]*")*[^"]*$)/).each do |word|
      if words[word]==nil
        words[word]=1
      else
        words[word]=words[word]+1
      end
    end
    return words
  end

  def anagram_groups
    my_array = Array.new
    if self.empty?
      return my_array
    end
    self.lstrip.downcase.delete('^a-zA-Z ').split(/\s+(?=(?:[^"]*"[^"]*")*[^"]*$)/).each do |word|
      add_to_group( word )
    end
    @@anagram_groups.each_value do |value|
      my_array.push(value.split(/,/))
    end
    return my_array
  end

  def add_to_group( word )
    new_group = {word.mince_word=>word}
    return if word==nil
    @@anagram_groups = new_group.merge(@@anagram_groups){|key, oldval, newval| "#{oldval},#{newval}"}
  end
  def mince_word
    return (self.split(//).sort).join
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

