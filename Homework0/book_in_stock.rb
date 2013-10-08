class BookInStock
  attr_accessor( :isbn, :price )
  @isbn  = ""
  @price = ""

  def initialize(isbn, price)
    raise(ArgumentError, ':isbn not a valid ISBN number') unless !isbn.empty?
    raise(ArgumentError, ':price is not a valid price') unless price.to_f > 0.0
    @isbn  = isbn
    @price = price.to_f
  end

  def price_as_string
    return sprintf( "$%01.2f" , @price )
  end
end