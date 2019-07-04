#!/usr/bin/ruby

def ask(question)
    print question
    answer = gets
    return answer.chomp
end

def get_price(quantity)
    if quantity < 50
        return 10.00
    elsif quantity >= 50 && quantity < 100
        return 9.00
    elsif quantity >= 100
        return 8.00
    end
end
    
puts("Welcome to our widgets store!")
answer = ask("how many widgets are you ordering today? ")
puts "You entered #{answer} widgets" 

number = answer.to_i
unit_price = get_price(number)
total_purchase =  number * unit_price
puts "Your total purchase is $#{total_purchase}"
