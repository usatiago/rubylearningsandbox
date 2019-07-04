#!/usr/bin/ruby

def wait(a,b)
    puts a
    sleep b
    puts "done"
end

def count_to_three
    puts 1
    puts 2
    puts 3
end

count_to_three
wait("hi",3)
count_to_three
count_to_three
