#!/usr/bin/ruby
counter = 0
loop do
    counter+=1
    puts "do you want to continue? (y/n)"
    answer = gets.chomp.downcase
    if answer == "n"
        break
    elsif answer == "y"
    else
        puts "that's an invalid input"
    end
end