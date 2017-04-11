#no.1 Uses of define method

# class Library
#   attr_accessor :games

#   def each(&block)
#     games.each(&block)
#   end

#   def map(&block)
#     games.map(&block)
#   end

#   def select(&block)
#     games.select(&block)
#   end
# end

#Refactoring:
# class Library
#   attr_accessor :games

#   [:each, :map, :select].each do |method|
#     define_method(method) do |&block|
#       games.send(method, &block)
#     end
#   end
# end

## =======================================================================>

#No. 2 class_eval is for instance method 
# class Person
# end

# Person.class_eval do
#   def say_hello
#    "Hello!"
#   end
# end

# jimmy = Person.new
# jimmy.say_hello # "Hello!"

## =======================================================================>

#No. 3 instance_eval is for class method 
# class Person
# end

# Person.instance_eval do
#   def human?
#     true
#   end
# end

# Person.human? # true

## =======================================================================>

#No. 4 Scopes
# [...]
# To define a simple scope, we use the scope method inside the class, passing the query that we'd like to run when this scope is called:

# class Article < ActiveRecord::Base
#   scope :published, -> { where(published: true) }
# end
# This is exactly the same as defining a class method, and which you use is a matter of personal preference:

# class Article < ActiveRecord::Base
#   def self.published
#     where(published: true)
#   end
# end
# Note in particular:

# This is exactly the same as defining a class method, and which you use is a matter of personal preference
# And a little further (the Rails3 guide says the same thing here BTW):

# 14.1 Passing in arguments
# [...]
# Using a class method is the preferred way to accept arguments for scopes.
# So which you use is a matter of preference and it is even recommended that you use class methods for scopes that take arguments.

# Using scope is mostly a notational issue. If you say scope :whatever then you're explicitly saying that whatever is meant to be a query builder; if you say def self.whatever then you're not implying anything about the intent of the whatever method, you're just defining some class method that may or may not behave like a scope.

# Of course, 14.1 makes a mess of this notational distinction by recommending that you not use scope when your scope takes arguments. Also keep in mind that in Rails3 you could say:

# scope :published, where(published: true)
# so an argumentless scope was visually "clean" and terse but adding a lambda to handle arguments would make it look messier:

# scope :pancakes, ->(x) { where(things: x) }
# But Rails4 wants lambdas even for argumentless scopes the distinction makes even less sense now.

# I suspect that the difference is historical at this point. Scopes were probably something special back in the before times but became plain old class methods in the Rails3 era to cut down on duplication and to better mesh with the new query interface that came with Rails3.

# link: http://stackoverflow.com/questions/32930312/ruby-on-rails-activerecord-scopes-vs-class-methods

## =======================================================================>

#No. 5 Active Support Concerns

# https://richonrails.com/articles/rails-4-code-concerns-in-active-record-models


## =======================================================================>

#No. 6

# AnyClassName.none == []
