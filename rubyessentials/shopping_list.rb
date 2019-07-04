#!/usr/bin/ruby

def create_list
    print "What is the list name?"
    name = gets.chomp
    hash = {"name" => name, "items" => Array.new}
    return hash
end

def add_list_item
    puts "what is the itemn called?"
    item_name = gets.chomp
    puts "How much/many?"
    quantity = gets.chomp.to_i
    hash={"name" => item_name, "quantity" => quantity}
    return hash
end

def print_separator(character="-")
    puts character*80
end

def print_list(list)
    puts "List: #{list['name']}"
    print_separator("=")
    list["items"].each do |item|
        puts "\tItem: " + item['name']
        puts "\tQuantity: " + item['quantity'].to_s
        print_separator()    
    end
end

list = create_list()
while true
    list["items"].push(add_list_item())
    print_list(list)
end
