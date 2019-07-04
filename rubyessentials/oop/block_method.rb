
def block_method
    puts "this is the first line in block_method."
    yield
    puts "this is the statemnent after the yield keyword."
end

block_method do
    puts "This statement is called from the block."
end