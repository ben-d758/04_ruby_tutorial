# Using 'reduce', write a function that returns the product of all the elements in an array

product_nums = [4, 5, 8, 13, 21]
product_nums.reduce { |total, num| total * num }

states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

def functional_lengths(states)
    states.reduce({}) do |lengths, state|
      lengths[state] = state.length
      lengths
    end
end

states.reduce({}) { |lengths, state| lengths.merge( state => state.length) }

p functional_lengths(states)
