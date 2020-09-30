# 'Map' - allows you to map a function over an array of elements. A powerful alternative to looping.

# Making URL-appropriate strings from an array using a block to loop

states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Imperative version

def imperative_urls(states)
    urls = []
    states.each do |state|
        urls << state.downcase.split.join("-")
    end
    urls
end

imperative_urls(states) # ["kansas", "nebraska", "north-dakota", "south-dakota"]


# Using 'Map'

#  Square every element in an array of numbers

squared_nums = [1, 2, 3, 4].map { |n| n*n }
squared_nums # [1, 4, 9, 16]

lowercase_names = ["ALICE", "BOB", "CHARLIE"].map { |name| name.downcase }
lowercase_names # ["alice", "bob", "charlie"]

