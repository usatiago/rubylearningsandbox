#!/usr/bin/ruby

randomNum = Random.new.rand(5)

loop do
    print "Guess a number between 0 and 5 (e to exit): "
    answer.gets.chomp
    if answer.lowercase == "e"
        print "The answer was " + randomNum.to_s
        break
    else
        if answer.to_i == randomNum
            print "you have guessed it right!!"
            break
        else
            print "you have guessed it wrong!!"
        end
    end
end

