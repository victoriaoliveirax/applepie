system("/usr/bin/false")
puts "O status code do comando /usr/bin/false foi: #{$?.exitstatus}"