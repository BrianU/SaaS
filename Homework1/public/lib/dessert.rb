class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
   @name     = name
   @calories = calories
    # your code here
  end
  def healthy?
    # your code here
    if self.calories < 200
      return true
    end
  end
  def delicious?
    return true
    # your code here
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    super("#{flavor} jelly bean", 5)
  end
  def delicious?
    return true unless flavor == 'licorice'
  end
end
