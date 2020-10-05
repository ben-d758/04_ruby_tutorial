states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Solving a filtering problem imperatively

def imperative_singles(states)
    single_words = []
    states.each do |state|
        if state.split.length == 1
            single_words << state
        end
    end
    single_words
end

imperative_singles(states) # ["Kansas", "Nebraska"]

# Functional solution using 'filter'

def functional_singles(states)
    states.select { |state| state.split.length == 1 }
end

functional_singles(states) # ["Kansas", "Nebraska"]


# Using modulo and .select

p [1, 2, 3, 4, 5, 6, 7, 8].select { |n| n % 2 == 0 } # [2, 4, 6, 8]