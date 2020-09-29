# (1..5).each { |i| puts 2**i }


# Every Ruby method can take a block and we can invoke the block using the 'yield' keyword

def sandwich
    puts "top bread"
    yield
    puts "bottom bread"
end

sandwich do 
    puts "lettuce, tomato, cheese"
end

