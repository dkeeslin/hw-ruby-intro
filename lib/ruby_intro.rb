# When done, submit this entire file to the autograder.
# Part 1

def sum arr
  result = 0
  arr.each {|value| result+=value}
  result
end


def max_2_sum arr
  arr = arr.sort
  if arr.length>0
    num1 = arr[-1]
  else
    num1 = 0
  end

  if arr.length>1
    num2 = arr[-2]
  else
    num2 = 0
  end
  num1+num2
end

def sum_to_n? arr,n
  arr.any? {|num1|
    arr_tmp = arr
    arr_tmp.delete(num1)
    arr_tmp.any?{|num2| num2+num1 == n}
  }
end


# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s 
  s =~ /\A[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4? s
  s =~ /\A[01]*00$/ or s=="0"
end


# Part 3

class BookInStock
  def initialize(book_isbn,book_price)
    if book_isbn == "" or book_price <= 0.0
      raise ArgumentError
    end
    @isbn = book_isbn
    @price = book_price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string()
    string =  "$%0.2f" % [@price]
    puts string
    string
  end
end
