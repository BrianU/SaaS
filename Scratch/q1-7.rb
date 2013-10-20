class Book
  attr_accessor :author
  attr_reader :title
  attr_writer :comments
  def initialize(author, title)
    @author = author
    @title = title
    @comments = []
  end
end

book = Book.new("Chuck Palahniuk", "Fight Club")


"#{book.title} was written by #{book.author}."

# book.comments.each{|comment| puts comment}

# puts book.comments << "#{book.title} was a good book"

# puts book.comments.each { |comment| puts comment }

book.title = "Cooking Club"