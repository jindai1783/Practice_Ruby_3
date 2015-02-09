# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  result = Array.new
  array.each {|x| result.push(x) if x[0] == 'a'}
  result
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  result = Array.new
  array.each {|x| result.push(x) if x[0] == 'a' || x[0] == 'e' || x[0] == 'i' || x[0] == 'o' || x[0] == 'u'}
  result
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  result = Array.new
  array.each {|x| result.push(x) if x != nil}
  result
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  result = Array.new
  array.each {|x| result.push(x) if x != nil && x != false}
  result
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.map! {|x| x.reverse}
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice, 
def every_possible_pairing_of_students(array)
  result = Array.new
  array.each.with_index do |x, i|
    for a in (i+1)..(array.length-1) do
      result.push([x, array[a]])
    end
  end
  result
end

# discard the first 3 elements of an array, 
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array.drop(3)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.insert(0, element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  array.map! {|x| x.reverse}
  array.sort!
  array.map! {|x| x.reverse}
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  string[0..(string.length-1)/2]
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  number *= -1 if "++-"[number <=> 0] == "+"
  number
end

# turn an array of numbers into two arrays of numbers, one an array of 
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  even = Array.new
  odd = Array.new
  array.each do |x|
    x.odd? ? odd.push(x) : even.push(x)
  end
  [even, odd]
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  number = 0
  array.each do |x|
    number += 1 if x.reverse == x
  end
  number
end

# return the shortest word in an array
def shortest_word_in_array(array)
  array.sort_by(&:length)[0]
end

# return the shortest word in an array
def longest_word_in_array(array)
  array.sort_by(&:length).reverse[0]
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.inject {|sum, n| sum + n}
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  array.concat(array)
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 33
def average_of_array(array)
  (1.0*array.inject{|sum, n| sum + n}/array.length).round(0)
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  result = Array.new
  array.each {|x| x <= 5 ? result.push(x) : break}
  result
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  result = {}
  array.each.with_index do |x, i|
    if !i.odd?
      result.store(x, array[i+1])
    end
  end
  result
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  result = []
  array.each do |x|
    for a in 0..(x.length-1) do
      result.push(x[a]) if !result.include?(x[a])
    end
  end
  result.sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  hash.flatten.inject {|sum, n| sum + n}
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  for a in 0..(string.length-1) do
    string.sub!(string[a], "") if (string[a].bytes[0] < 91)
  end
  string
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  float.to_i + 1
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  float.to_i
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  date.strftime("%d/%m/%Y")
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  med = email[/[@].*[.]/]
  domain = med[1..-2]
end

# capitalize the first letter in each word of a string, 
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  result = string.split.each do |x|
    if (x != 'a' && x != 'and' && x != 'the')
      x.capitalize!
    end
  end
  result[0].capitalize!
  result.join(' ')
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string.include?('@') ||
  string.include?('!') ||
  string.include?('£') ||
  string.include?('$') ||
  string.include?('%')
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.last
end

# should return true for a 3 dot range like 1...20, false for a 
# normal 2 dot range
def is_a_3_dot_range?(range)
  a = range.first
  b = range.last
  range != (a..b)
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  total = 0
  file = File.new(file_path, "r")
  file.readlines.each do |x|
    total += x.split.size
  end
  total
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  str_method
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  require 'open-uri'
  content = open("https://www.gov.uk/bank-holidays.json").read
  formated_date = date.strftime("%Y-%m-%d")
  content.include?(formated_date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  month = birthday.strftime("%m").to_i
  day = birthday.strftime("%d").to_i
  year = birthday.strftime("%Y").to_i
  loop do
    year = year += 1
    time = Time.new(year, month, day)
    break if time.strftime("%u") == "5"
  end
  year
end

n = your_birthday_is_on_a_friday_in_the_year(Time.new(2013, 1, 1))

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
  ints = []
  for i in 1..50
    ints.push(i)
  end

  (1..100).each do |x|
    if ints.include?(x/5.0)
      puts(ints.include?(x/3.0) ? 'fizzbuzz' : 'fizz')
    else
      puts(ints.include?(x/3.0) ? 'buzz' : x)
    end
  end
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
  for i in 1..98
    puts "#{100 - i} bottles of beer on the wall, #{100 - i} bottles of beer."
    puts "Take one down and pass it around, #{99 - i} bottles of beer on the wall."
    puts ""
  end
  puts "1 bottle of beer on the wall, 1 bottle of beer."
  puts "Take one down and pass it around, no more bottles of beer on the wall."
  puts ""
  puts "No more bottles of beer on the wall, no more bottles of beer."
  puts "Go to the store and buy some more, 99 bottles of beer on the wall."
end
