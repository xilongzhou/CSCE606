# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)

end

def max_2_sum arr
  arr.max(2).inject(0,:+)
end

def sum_to_n? arr, n
  return false if arr.empty? 
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+ name
  
end


def starts_with_consonant? s
  # YOUR CODE HERE
  # return s =~ /^[bcdfghjklmnpqrstvwxyz]/i.
  return /^[bcdfghjklmnpqrstvwxyz]/i.match(s)

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s) == "0"
      return true
  end
  if /^[01]*(00)$/.match(s) #|| /^0$/.match(s)
      return true
  else
      return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? or price <= 0)
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    return "$%.2f" % price
  end
  
end
