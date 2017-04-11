# Each coder has different coding levels

class Coder
  attr_reader :name, :coding_level
  def initialize(name, level)
    @name = name
    @coding_level = CodingLevel.new(level)
  end
end

class CodingLevel
  def initialize(coder)
    @level = level
  end
  def is_newb?
    @level.zero?
  end
  def is_soso?
    @level > 4
  end
  def is_kickass?
    @level == 10
  end
  def has_clearance?(level_required)
    @level <= level_required
  end
end

# without forwardable

coder = Coder.new("Phil", 10)
if coder.clearance_level.has_clearance?(4)
  puts "Welcome to Sector 4 #{coder.name}."
  if coder.clearance_level.is_top_secret?
    puts "You've got top secret coder clearance!"
  end
end

# it can help beautify your code and reduces repetition
