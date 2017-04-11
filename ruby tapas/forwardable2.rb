# New Interface

require 'forwardable'

class Human
  extend Forwardable

  def initialize
    @stomach = []    # prepare delegate object
    @stomach2 = []
  end

  # setup preferred interface
  def_delegator :@stomach, :push, :eat
  def_delegator :@stomach, :shift, :vommit

  def_delegators :@stomach2, :clear, :first, :shift, :size, :full?, :push
  def_delegators :@stomach, :clear, :first, :shift, :size, :full?, :push

  def full?
    size > 1
  end
end

h = Human.new
h.eat "Mcd", "KFC", "Sushi"
p h
h.push "shit"
p h

# p h.push "shit"
# p h
# h.vommit
# p h
# p h.full?

# Note:  It also ensures that if we ever change the name of the attribute e.g. stomach, we won't have to update it in so many places.


# class Animal < Human
#   # def initialize
#   #   @stomach = []
#   # end
# end

# a = Animal.new
# p a
# a.eat "grass"
# p a
