# When done, submit this entire file to the autograder.
# Part 1

def sum arr
  result = 0
  for value in arr
    result+=value
  end
  result
end

def max_2_sum arr
  num1 = arr.max
  
  if arr.length >1
    arr.delete_at(arr.index(num1))
    num2 = arr.max
  
  elsif arr.length == 1
    return num1
  
  else 
    return 0
  
  end
  
  num1 + num2
end

def sum_to_n? arr, n
  for i in arr
    for j in arr
      if i + j == n and i !=j
        return true
      end
    end
  end
  false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s==''
    return false
  else
    first = s[0] #get first letter
    if first =~ /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  #check if it's binary
  for i in s.chars
    if i != "0" and i != "1"
      return false
    end
  end
  
  #check if it is divisible by 4 (decided by checking if the last two digits are 0)
  if s.length == 1
    if s[-1] == "0"
      return true
    end
  else 
    if s[-1] == "0" and s[-2] == "0"
      return true
    end
  end
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
