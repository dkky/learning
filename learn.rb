
# #1
# find the odd times of the integer appearing
# seq = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]

# #brilliant method
# def find_it(seq)
#   seq.detect { |n| seq.count(n).odd? }
# end

# #my method
# counts = Hash.new(0)

# seq.each do |s|
#  counts[s] += 1
# end

# counts.each do |key,value|
# 	if value.odd? 
# 		p key
# 	end
# end

# #=======================================================================>#

#no. 2

# no = 92
# po = 1

# #my method
# cal = []
# no.to_s.chars.inject(0) do |sum, element|
#   cal << element.to_i ** po
#   po += 1
# end

# if cal.reduce(:+) % no == 0
#   cal.reduce(:+)/no
# else
#   return -1
# end

# #suggested method 
# def dig_pow(n, p)
#   c = n.to_s.split('').each.with_index.inject(0){ |s, (v, i)|
#     s + v.to_i ** (p + i)
#   }
#   c % n != 0 ? -1 : c / n
# end
# #=======================================================================>#

#No. 3 
#reject all the elements that are Strings in the array

# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end

# #=======================================================================>#


#No. 4 
#find the length of the shortest word in the array 

#my method
# (a.split.map {|e| e.length }).min

#suggested method 
# s.split.map(&:size).min

#note: s.split.map(&:size) is equivalent to split.map {|e| e.size })

# #=======================================================================>#

#no. 5
#Given the range of number e.g. 10, find the multiples of 3 and 5 below the number and sum it up.


# number = 10

#my method
# total = 0

# for num in 1...number 
# 	if num % 3 == 0  || num % 5 == 0
# 		total += num
# 	end
# end
# puts total

#suggested method
# (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)

# #=======================================================================>#
# require 'byebug'

# l1=  [1, -2, 3, 0, -6, 1]
# s = -6

# #if first 2 values (no repetition of) equal to the number are found, 
# #return them in an array
# #else return nil

# l1.detect do |first|
# 	l2 = l1.reject {|i| i == first}
# 	byebug
# 	l2.detect do |second|
# 		if first + second == s
# 			p [first, second]
# 		else
# 			nil
# 		end
# 	end
# end
# #=======================================================================>#


#no. 6
# find anagram

# word = 'abab'
# words = ['aabb', 'abcd', 'bbaa', 'dada']
# def anagrams(word, words)
#   words.select { |w| w.chars.sort == word.chars.sort }
# end
# #=======================================================================>#

#no. 7

# s1 = 'scriptingjava'
# s2 = 'javascript'

# intersection = s1.chars.sort & s2.chars.sort 
# byebug
# long = s1.chars.sort 
# short = s2.chars.sort 
# byebug
# if intersection && intersection.size == s2.size
# 	puts true
# else
# 	puts false
# 

#suggested method
  # s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}

# #=======================================================================>#

#no.8
#to find the perfect square [x,y] of the num given

# num = 4 , expected output = [2,2]
#if num = 5, it will return nil

# # my method
# (1..100).each do |x|
# 	(1..100).each do |y|
# 		if x ** y == num && y > 1
# 			p [x,y]
# 		end
# 	end
# 	puts nil
# end

# # suggested method
# def isPP(n)
#     # your code
#     for a in (2..n) do
#       for b in (2..n) do
#         return [a,b] if (a**b) == n 
#         break if (a**b)>n 
#       end
#       return nil if (a**2)>n
#     end
# end

# #=======================================================================>#

#no.9
# createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

# '(%d%d%d) %d%d%d-%d%d%d%d' % array

# #=======================================================================>#

#no. 10
#calculate how many times the num times each other until it becomes single digit.
# num = 39 
# result = 3

# def persistence(num)
# 	k = 0
# 	while num > 9
# 		num = num.to_s.split(//).map{|x| x.to_i}.inject(:*)
# 		k += 1
# 	end
# 	k
# end
# persistence(num)
# puts persistence(num) == result 
# #=======================================================================>#

#no.11 
#even-indexed element will be capitalized.

#suggested method 1
# str = "This is a test"
# string.gsub(/(\w{1,2})/) { |s| $1.capitalize }

#suggested method 2
  # string.split(' ').map do |word|
  #   word.split('').each_with_index.map do |char, i|
  #     i % 2 == 0 ? char.upcase : char.downcase
  #   end.join('')
  # end.join(' ')

#my failed method 
# p arr = str.split(//).select! { |x| x != " " }

# p arr.each { |char| char.capitalize! if arr.index(char) % 2 == 0 }.join()
	# if index.even?
	# 	char.capitalize
	# end
 
# #=======================================================================>#

# num = 23456
# p num.to_s.split(//).map(&:to_i).inject(:+)

# n < 10 ? n : digital_root(n / 10 + n % 10)

# #=======================================================================>#
#no. 12

# the first element of the sub-array means people who board the bus. The 2nd means th number of people leaving the bus.
# Count who's left after the last bus stop. 

# my method
# bus_stops = [[10, 0], [3, 5], [5, 8]]
# def number(bus_stops)
# 	bus_stops.map {|a| a[0] - a[1] }.inject(:+)
# end

#suggested method
# def number(bus_stops)
#   bus_stops.map {|(on,off)| on - off }.reduce(:+)
# end

# puts number(bus_stops) == 5
# require 'byebug'

# strarr = ["zone", "abigail", "theta", "form", "libe", "zas"]
# k = 2 

# def longest_consec(strarr, k)
#     # your code
#     strarr.length = n
#     if n == 0 || k > n || k <= 0
#       return ""
#     else
#       strarr.find(&:max)
#     end
# end

# def longest_consec(strarr, k)
#   return "" unless k.between?(1, strarr.length)
#   byebug
#   strarr.each_cons(k).map(&:join).max_by(&:length) || ""
# end

# puts longest_consec(strarr, k) == "abigailtheta"

# #=======================================================================>#

#No. 
#return the sum of the numbers between and including a & b
# def get_sum(a,b)
#   return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+) 
# end

# def get_sum(a,b)
#   (a..b).reduce(:+) || (b..a).reduce(:+)
# end

# puts get_sum(0,1) == 1
# puts get_sum(0,-1) == -1
# puts get_sum(1,2) == 3
# puts get_sum(5,-1) ==14
# #=======================================================================>#


# class String
#   def toJadenCase
# 	   self.split.map(&:capitalize).join(" ")
#   end
# end

# str = "How can mirrors be real if our eyes aren't real";
# puts str.toJadenCase() == "How Can Mirrors Be Real If Our Eyes Aren't Real"

# #=======================================================================>#
# def find_needle(haystack)
# 	#initial method
#   haystack.each_with_index do |var, indice|
# 		if var == "needle"
# 			return "found the needle at position #{indice}"
# 		end
# 	end
# 	#better method
# 	return "found the needle at position #{haystack.index("needle")}"
# end


# puts find_needle(['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false]) == 'found the needle at position 3'
# puts find_needle(['283497238987234', 'a dog', 'a cat', 'some random junk', 'a piece of hay', 'needle', 'something somebody lost a while ago']) == 'found the needle at position 5'
# puts find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,'needle',1,2,3,4,5,5,6,5,4,32,3,45,54]) == 'found the needle at position 30'
# puts find_needle(['needle',1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54]) == 'found the needle at position 0'
# puts find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54,'needle']) == 'found the needle at position 43'

# #=======================================================================>#


# class Game
#   attr_accessor :name, :year, :system

#   def initialize(name, year, system)
#     self.name = name
#     self.year = year
#     self.system = system
#   end
# end

# Game = Struct.new("haha", "1234", "lol")
# p Game

# array = [nil, "cat","dog", nil]
# p array.sort_by {|v| v ? 0 : 1  } #why?

# class Fixnum
#   ROMAN_NUMBERS = {
#     1000 => "M",  
#      900 => "CM",  
#      500 => "D",  
#      400 => "CD",
#      100 => "C",  
#       90 => "XC",  
#       50 => "L",  
#       40 => "XL",  
#       10 => "X",  
#         9 => "IX",  
#         5 => "V",  
#         4 => "IV",  
#         1 => "I",  
#   }

#   def roman
#     n = self
#     roman = ""
#     ROMAN_NUMBERS.each do |value, letter|
#       roman << letter*(n / value)
#       n = n % value
#     end
#     return roman
#   end
# end

# 2000.roman
# require 'byebug'

# random_numbers = [1,2,4,18,2,3,5,6]

# def linear_search(number, test_array)
#     idx = 0
#     while idx < (test_array.length - 1)
#         test_array.each do |num|
#             # byebug
#             if num == number
#                 puts idx 
#             end
#             idx += 1

#         end
#     end
# end


# linear_search(18, random_numbers)

# class SmartBoggleBoard

#   def initialize
  
#     # @board = Array.new(4){Array.new(4)}

#     @dice =   [["A","E","E","G","N"],
#               ["E","R","T","T","Y"],
#               ["A","O","T","T","W"],
#               ["A","B","J","O","O"],
#               ["E","R","T","V","W"],
#               ["C","M","O","T","U"],
#               ["D","S","T","T","Y"],
#               ["E","O","S","S","T"],
#               ["D","L","R","V","Y"],
#               ["A","H","O","P","S"],
#               ["H","M","N","Q","U"],
#               ["E","I","N","S","U"],
#               ["E","G","H","N","W"],
#               ["A","F","K","P","S"],
#               ["H","N","N","R","Z"],
#               ["D","I","L","R","X"]]
#   end

#   def shake!
#     puts @dice.shuffle.map {|d| d.sample.sub('Q','Qu')}.each_slice(4).to_a.map { |a| a.join(' ')}   # .each_slice(4) 
#   end

# end

# test = SmartBoggleBoard.new
# test.shake!

# require "byebug"
#     def dataTable(data)
#         data[0] = ["Number","Name","Position","Points per Game"]
#         data[1] = [12,"Joe Schmo","Center",[14,32,7,0,23]]
#         data[2] = [9,"Ms. Buckets","Point Guard",[19,0,11,22,0]]
#         data[3] = [31,"Harvey Kay","Shooting Guard",[0,30,16,0,25]]
#         data[4] = [18,"Sally Talls","Power Forward",[18,29,26,31,19]]
#         data[5] = [22,"MK DiBoux","Small Forward",[11,0,23,17,0]]
#         return data
#     end


# def format_array(array)
#     dub_array = array.map(&:dup)
#     array.each do |x|
#         # x.insert(0,dub_array[0][0])
#         x[0] = nil
#         # x.insert(2,dub_array[0][1])
#         # x.insert(4,dub_array[0][2])
#         # x.insert(6,dub_array[0][3])
        
#     end
#     # puts dub_array == array
#     p dub_array
#     puts "here"
#     p array
#     puts "there"
# end
# # Driver Code
# 10.times do
# #create_Tik
# end
# p format_array(dataTable(Array.new(5)))

# array = [[1,2,3,4],[5,6,7,8]]
# def format_array(array)


# require 'mechanize'

# mechanize = Mechanize.new

# # page = mechanize.get('http://stackoverflow.com/')

# # puts page.title

# page = mechanize.get('http://www.lifehack.org/articles/productivity/8-ways-train-your-brain-learn-faster-and-remember-more.html')

# puts page.at('.infinity-post-item').text.strip
require 'faker'

	user = Hash.new { |hash, key| hash[key] = {} }
	

	50.times do |i|

		user["user#{i}".to_sym][:name] = Faker::Superhero.name
		user["user#{i}".to_sym][:email] = Faker::Internet.email		
		# user[:user][:name] = Faker::Superhero.name
		# user[:user][:email] = Faker::Internet.email

	end
	p user
