# Chapter 5: Methods and Return Values

## Overview
Methods are crucial for organizing and reusing code in Ruby. This chapter covers how to define methods, pass parameters, handle return values, and best practices for using methods in Ruby programming.

## Defining Methods
In Ruby, you define a method using the `def` keyword, followed by the method name and any parameters. Here is a simple example:

```ruby
def greet(name)
  puts "Hello, #{name}!"
end
```

You can call this method by passing the required argument like this:

```ruby
greet("Alice")
```

## Parameters
Methods can take multiple parameters, separated by commas. Here's an example of a method that takes two parameters:
```ruby
def add(a, b)
  puts "The sum is #{a + b}"
end

add(5, 3)
```


## Default Parameters
You can also define default values for parameters that will be used if no argument is provided for that parameter:

```ruby 
def greet(name, greeting="Hello")
  puts "#{greeting}, #{name}!"
end

greet("Alice")            # Outputs: Hello, Alice!
greet("Alice", "Hi")      # Outputs: Hi, Alice!
```

## Return Values
In Ruby, a method returns the result of the last expression evaluated, but you can also use return to return a value early:

```ruby
def largest_number(a, b)
  return a if a > b
  b
end

puts largest_number(5, 10)

```