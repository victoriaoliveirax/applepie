#!/bin/env ruby

stdin = (STDIN.tty?) ? 'not reading from stdin' : $stdin.read
puts "STDIN: #{stdin}"

puts "out"
$stderr.puts "err"
