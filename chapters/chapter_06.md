# Chapter 6: Working with Arrays and Hashes

## Overview
Arrays and hashes are essential data structures in Ruby used to organize and store data. This chapter explores how to create, access, and manipulate these structures effectively.

## Arrays
Arrays in Ruby are ordered, integer-indexed collections of any object. Here's how to create and manipulate an array:

### Creating Arrays
```ruby
numbers = [1, 2, 3, 4, 5]
names = ["Alice", "Bob", "Charlie"]
```


### Accessing Elements
Elements in an array are accessed by their index:

```ruby 
puts numbers[0]  # Outputs 1
puts names[2]    # Outputs Charlie

```

### Adding Elements
You can add elements to arrays using push or the << operator:

```ruby 
numbers.push(6)
names << "David"
```

### Iterating Over Arrays

Use each to iterate over elements:
```ruby 
names.each do |name|
  puts "Hello, #{name}!"
end

```

## Hashes
Hashes in Ruby are collections of key-value pairs. They are similar to dictionaries in other languages.


### Creating Hashes

```ruby
ages = { "Alice" => 30, "Bob" => 25, "Charlie" => 35 }

```

### Accessing Values

Access values in a hash by using their keys:

```ruby 

puts ages["Alice"]  # Outputs 30

```

### Adding Key-Value Pairs
Add new pairs to hashes like this:

```ruby
ages["David"] = 28
```

### Iterating Over Hashes
Iterate over key-value pairs using each:

```ruby
ages.each do |name, age|
  puts "#{name} is #{age} years old."
end

```