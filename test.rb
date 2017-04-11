# filename = ARGV.first

# txt = open(filename)

# puts "Here's your file #{filename}:"
# print txt.read

# print "Type the filename again: "

# file_again = $stdin.gets.chomp

# txt_again = open(file_again)

# print txt_again.read



# a = Hash.new{|h,k| h[k]=Hash.new(&h.default_proc) }

# class Person
# 	def yo
# 		p self.class
# 	end
# end

# class Boy < Person
# end

# Boy.new.yo

array = ["hehe","haha","hoho"]

array.each do |elem|
  case elem
  when "hehe"
    puts "hehe here"
  when "hoho"
    puts "hoho here"
  when "haha"
    puts "haha here"
  when "huhu"
    puts "huhu here"
  end
end