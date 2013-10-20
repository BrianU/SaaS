module FunWithStrings
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
    words = Hash.new
    self.lstrip.downcase.delete('^a-zA-Z ').split(/\s+(?=(?:[^"]*"[^"]*")*[^"]*$)/).each do |word|
      word
      words[word]=word
          end
    print words
    return words
  end

  def check_word_is_anagram?(words, word)

    # to check if a word is an anagram of another
    #1. convert the word into a list of letters
    #2. compare the letters
    #3. if they are the same then enter the group

  end


end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

"scream cars for four scar creams".anagram_groups
