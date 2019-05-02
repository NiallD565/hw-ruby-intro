# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
   arr.reduce 0, :+

end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))

end

def sum_to_n? elements, total
  # YOUR CODE HERE
  if elements.empty?
    return true if total == 0
  else
    elements.combination(2).to_a.each do |pair|
      return true if sum(pair) == total
    end
  end

  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
	"Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  	/^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
