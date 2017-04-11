puts 'Talk to your grandma!'
command = gets.chomp 
count = 0

while count < 3
  count = 1
  while command != 'BYE'
    if command != command.upcase
      puts 'HUH?!  SPEAK UP, SONNY!'
    else
      year = "19"+rand(30..50).to_s
      puts "NO, NOT SINCE #{year}!"
    end
    command = gets.chomp
  end
  while command == 'BYE' && count < 3
      count +=1
      puts 'What\'s up dear?'
      command = gets.chomp
  end
end

puts 'bye then.'


