# Chapter 10: Advanced Ruby Features

## Overview
As you become more comfortable with the basics of Ruby, you can explore its advanced features to enhance your programming skills and create more sophisticated applications. This chapter introduces modules, mixins, metaprogramming, and other advanced topics.

## Modules
Modules in Ruby serve as a way to group related methods, classes, and constants. They can be used for namespacing and as mixins to add functionality to classes.

### Defining a Module
```ruby
module Greetable
  def greet
    "Hello, I'm #{name}!"
  end
end

## Mixins
Ruby does not support multiple inheritance directly, but mixins can be used to include multiple modules in a class.


### Including Modules in Classes
Modules can be included in classes to add their methods as instance methods:

```ruby 
class Person
  include Greetable

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

alice = Person.new("Alice")
puts alice.greet

```

### Example of a Mixin
```ruby 
module Walkable
  def walk
    "Walking..."
  end
end

class Robot
  include Greetable
  include Walkable
end

robot = Robot.new
robot.name = "Robo"
puts robot.greet
puts robot.walk

```


## Metaprogramming
Metaprogramming in Ruby allows for the dynamic creation of methods and classes during runtime.

### Defining Methods Dynamically

```ruby
class Product
  [:name, :brand, :category].each do |attr|
    define_method("get_#{attr}") do
      instance_variable_get("@#{attr}")
    end

    define_method("set_#{attr}") do |value|
      instance_variable_set("@#{attr}", value)
    end
  end
end

```

## Other Advanced Features
    Singleton Classes and Methods: Customize behavior for individual objects.
    Lazy Evaluation: Use Enumerator::Lazy for handling large datasets efficiently.
    Refinements: Safely extend core classes locally without affecting global scope.