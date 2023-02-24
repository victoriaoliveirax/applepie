#!/bin/env ruby

require 'open3'
cmd = ARGV[0]
args = ARGV[1..] || []
stdout, stderr, status = Open3.capture3(cmd + " " + args.join(" "))

puts "COMMAND: #{cmd}"
puts "ARGUMENTS: #{args.join(" ")}"
puts "STDOUT: #{stdout}"
puts "STDERR: #{stderr}"
puts "STATUS: #{status}"