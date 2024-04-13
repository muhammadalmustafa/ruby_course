# Chapter 9: File Input/Output

## Overview
Working with files is a fundamental aspect of programming that allows you to store data permanently and process large amounts of information. This chapter covers how to handle file input and output operations in Ruby.

## Reading from Files
Ruby makes reading from files straightforward with several useful methods.

### Opening and Reading a File
You can open and read a file using the `File.open` method and read its contents in various ways:

```ruby
File.open('example.txt', 'r') do |file|
  while line = file.gets
    puts line
  end
end
```

### Reading the Entire File
To read an entire file at once, you can use File.read:

```ruby
content = File.read('example.txt')
puts content
```

### Writing to Files
Ruby also allows you to write to files in several ways.

### Writing to a File
You can write to a file by opening it in write mode ('w'). This will create the file if it does not exist or truncate it if it does.

```ruby
File.open('output.txt', 'w') do |file|
  file.puts "Hello, world!"
end

```

### Appending to a file 

If you want to add content to the end of a file without truncating it, open it in append mode ('a'):

```ruby
File.open('output.txt', 'a') do |file|
  file.puts "This is a new line."
end
```

### Handling Files with Blocks
Using blocks with file operations ensures that the file is closed properly after the operations are complete.

### Example with Block
```ruby
File.open('another_example.txt', 'r') do |file|
  file.each_line do |line|
    puts line
  end
end
```


