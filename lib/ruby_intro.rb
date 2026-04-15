# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  puts "#{arr}"

  total = 0
  i = 0
  while i < arr.size
    total += arr[i]
    i += 1
  end
  puts "#{total}"
  total
end

def max_2_sum arr
  # YOUR CODE HERE
  puts "#{arr}"
  if arr.size == 0
    then return 0 end
  if arr.size == 1
    then return arr[0] end
  largest_1 = arr[0]
  largest_2 = 0
  i = 0
  l_i = 0
  while i < arr.size 
    if largest_1 < arr[i]
      largest_1 = arr[i]
      l_i = i
    end
    i +=1
  end
  puts "largest_1 #{largest_1}"
  j = 0
  l_2 = l_i - 1
  largest_2 = arr[l_2]
  while j < arr.size  
    if largest_2 < arr[j]
      if j != l_i
        largest_2 = arr[j]
      end
    end
    j +=1
  end
  puts "largest_2 #{largest_2}"
  puts "#{largest_1 + largest_2}"
  largest_1 + largest_2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0 
  while i < arr.size
    num = arr[i]
    puts " arr[i] #{num}"
    j = 0
    while j < arr.size
      puts " arr[j] #{j} #{arr[j]}"
      if j != i 
        if (arr[i] + arr[j]) == n
          return true
        end
      end
      j = j+1
    end
    i = i+1
  end
  false   
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size() == 0 then return false end
  first_letter = s[0].capitalize
  
  if first_letter == 'A' then return false end
  if first_letter == 'E' then return false end
  if first_letter == 'I' then return false end
  if first_letter == 'O' then return false end
  if first_letter == 'U' then return false end
  if /[A-Z]/.match?(first_letter) then return true end
  #/[a-z]/.match(first_letter)  #check if it's alphabetic 
  #!s[0].match?(/[AEIOU]/) # not a vowel
 
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
  i = 0
  if s.size == 0
    then return false end
  while i < s.size
    if s[i].to_i != 0
      if s[i].to_i != 1
        then return false
      end
    end
    if /[a-z]/.match?(s[i]) then return false end
    i += 1
  end
  if s.to_i % 4 != 0
    then return false
  end
  return true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn,:price
  def initialize(isbn,price)
    if isbn.size == 0
      then raise ArgumentError
    end
    if price <= 0
      then raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def getisbn()
    @isbn
  end

  def getprice()
    @price
  end

  def price_as_string()
    price = format('%.2f',@price)
    "$#{price}"
  end
end