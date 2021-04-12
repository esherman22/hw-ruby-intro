# When done, submit this entire file to the autograder.

# Part 1

def sum array
  return array.sum
end

def max_2_sum array
  return array.empty? ? 0 : array.length == 1 ? array[0] : array.delete_at(array.index(array.max)) + array.max
end

def sum_to_n? array, n
  return array.empty? ? false : array.length == 1 ? false : array.combination(2).to_a.select {|x| x[0] + x[1] == n}.empty? ? false : true
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s.empty? ? false : s[0] =~ /\A[^aeiou]/
end

def binary_multiple_of_4? s
  return s.empty? ? false : s =~ /^[0|1]+$/ ? s.to_i()%4 == 0 : false
end

# Part 3

class BookInStock
	def init(isbn, price)
	
		if isbn.empty? or price <= 0
			raise ArgumentError
		end
		
		@isbn = isbn
		@price = price
	end
	
	# Getters
	attr_reader :isbn
	attr_reader :price
	
	# Setters
	attr_writer :isbn
	attr_writer :price
	
	def price_as_string
		return "#{sprintf("\$%.2f",(price))}"
	end
	
end
