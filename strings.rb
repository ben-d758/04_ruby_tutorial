# password = "fooba"
# if (password.length < 6)
#     puts "password is too short"
# else 
#     puts "password set"
# end

# password = "foobar"
# puts "password is too short" unless password.length >= 6

# x, y = "foo", ""

# if x.empty? || y.empty?
#     puts "both strings are empty"
# else
#     puts "at least one string is empty"
# end 

soliloquy = "To be, or not to be, that is the question:"

# for i in 0..(soliloquy.length - 1)
#     puts soliloquy[i]
# end

for i in 0..(soliloquy.length - 1)
    puts soliloquy.reverse[i]
end

