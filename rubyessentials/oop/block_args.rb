def get_name
    print "enter your name: "
    name = gets.chomp
    yield name
end

get_name do |n|
    print "that's a cool name, #{n}"
end