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