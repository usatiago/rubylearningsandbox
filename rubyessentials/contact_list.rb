#!/usr/bin/ruby



def ask(question,kind="string")
    print question + " "
    answer = gets.chomp
    if kind == "number"
        answer = answer.to_i
    end
    return answer
end

def add_contact
    contact = {"name" => "","phone_numbers" => []}
    contact["name"] = ask("What is the contact's name?")
    answer=""
    while answer != "n" do
        answer = ask("do you want to add a phone number? (y/n)")
        if answer == "y"
           phone = ask "Enter contact phone number:"
           contact["phone_numbers"].push(phone)
        end
    end
    return contact
end

contact_list=[]
answer = ""
while answer != "n" do
    contact_list.push(add_contact())
    answer = ask("want to add another? (y/n):")
end

puts "="*80
contact_list.each do |contact|
    puts "Name: #{contact["name"]}"
    if !contact["phone_numbers"].empty?
        contact["phone_numbers"].each do |phoneNumnber|
            puts "Phone Number: #{phoneNumnber}"
        end
    end
    puts "="*80
end

