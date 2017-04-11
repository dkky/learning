class String
  # colorization
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def blue
    colorize(34)
  end

  def pink
    colorize(35)
  end

  def light_blue
    colorize(36)
  end
end

$maze = [
  ["#", "#", "#", "#", "#", "#", "#"],
  ["O", " ", " ", " ", " ", " ", "#"],
  ["#", "#", "#", " ", "#", "#", "#"],
  ["#", " ", " ", " ", " ", " ", "#"],
  ["#", " ", "#", " ", "#", "#", "#"],
  ["#", " ", "#", " ", " ", " ", "#"],
  ["#", " ", "#", "#", "#", "#", "#"],
  ["#", " ", " ", " ", " ", " ", "#"],
  ["#", " ", "#", "#", "#", "#", "#"],
  ["#", " ", " ", " ", " ", " ", "X"],
  ["#", "#", "#", "#", "#", "#", "#"]
]

$position = [1, 0]

def display
  puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
  $maze.each { |x|
    x.each { |y|
      print y + " "
    }
    puts ""
  }
end

def move(dir_a, dir_b, char)
  $maze[$position[0]][$position[1]] = char #current O pos = empty
  $position[0] += dir_a
  $position[1] += dir_b
  $maze[$position[0]][$position[1]] = "O".light_blue #current O pos = empty
end

def recurse
  sleep(1.0/4.0)
  if ($maze[$position[0]][$position[1] + 1]) == "X"
    return
  elsif ($maze[$position[0] + 1][$position[1]]) == "X"
    return
  elsif ($maze[$position[0]][$position[1] - 1]) == "X"
    return
  elsif ($maze[$position[0] - 1][$position[1]]) == "X"
    return
  elsif($maze[$position[0]][$position[1] + 1]) == " "
    move(0, 1, ".".green)
  elsif ($maze[$position[0] + 1][$position[1]]) == " "
    move(1, 0, ".".green)
  elsif ($maze[$position[0]][$position[1] - 1]) == " "
    move(0, -1, ".".green)
  elsif ($maze[$position[0] - 1][$position[1]]) == " "
    move(-1, 0, ".".green)
  #oops, dead end!
  elsif($maze[$position[0]][$position[1] + 1]) == ".".green
    move(0, 1, ".".red)
  elsif ($maze[$position[0] + 1][$position[1]]) == ".".green
    move(1, 0, ".".red)
  elsif ($maze[$position[0]][$position[1] - 1]) == ".".green
    move(0, -1, ".".red)
  elsif ($maze[$position[0] - 1][$position[1]]) == ".".green
    move(-1, 0, ".".red)
  end
  display
  recurse
end

recurse