require './libc'

puts "Error Libc" unless Libc.c_func == 1
puts "Error Librust" unless Librust.rust_func == 1
puts "Test OK"
