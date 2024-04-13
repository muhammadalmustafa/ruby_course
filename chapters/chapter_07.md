# Chapter 7: Object-Oriented Programming in Ruby

## Overview
Object-Oriented Programming (OOP) is a programming paradigm that uses "objects" — data structures consisting of data fields and methods together with their interactions — to design applications and computer programs. Ruby is a powerful OOP language, and this chapter introduces the basic concepts of OOP in Ruby, including classes, objects, inheritance, and more.

## Classes and Objects
In Ruby, classes are blueprints for creating objects (instances of classes).

### Creating a Class
Here’s how to define a simple class in Ruby:

```ruby
class Person
  def initialize(name)
    @name = name  # @name is an instance variable
  end

  def greet
    "Hello, #{@name}!"
  end
end
```

### Creating Objects

You can create an object by calling the new method on a class:

```ruby
alice = Person.new("Alice")
puts alice.greet  # Outputs: Hello, Alice!
```

## Inheritance
Inheritance allows you to create a new class that is a type of an existing class.


### Defining a Subclass
Here's how you can create a subclass in Ruby:

```ruby
class Employee < Person
  def initialize(name, position)
    super(name)  # Calls the superclass's initialize method
    @position = position
  end

  def profile
    "#{@name} works as a #{@position}."
  end
end


```

### Using Subclasses

```ruby
bob = Employee.new("Bob", "Developer")
puts bob.profile  # Outputs: Bob works as a Developer.
puts bob.greet    # Outputs: Hello, Bob!
```

## Encapsulation and Polymorphism
Encapsulation is the practice of keeping data (attributes) and the methods that act on the data in one object. Polymorphism is the ability of different classes to respond to the same message (method call) in different ways.

### Encapsulation

You hide the object's internal state and require all interaction to be performed through object's methods.

### Polymorphism Example
```ruby
class Animal
  def speak
    "Some sound"
  end
end

class Dog < Animal
  def speak
    "Bark"
  end
end

class Cat < Animal
  def speak
    "Meow"
  end
end

animals = [Dog.new, Cat.new]
animals.each do |animal|
  puts animal.speak  # Outputs "Bark" for Dog and "Meow" for Cat
end
```