def get_name(prompt, &block)
    print prompt + ": "
    name = gets.chomp
    yield name
end

get_name do |n|
    print "that's a cool name, #{n}"
end