# The 'reduce' method takes a function of 2 arguments,
# the first which is an accumulator for result, and the second
# which is the array element itself

# EXAMPLE 1
numbers = 1..10
# sum: Imperative solution

def imperative_sum(numbers)
    total = 0
    numbers.each do |n|
        total += n
    end
    total
end

imperative_sum(numbers) # 55

# sum: Using '.reduce'. it takes an initial value, which by default is 0. '.reduce(0)'

numbers.reduce { |total, n| total += n } # 55

# can use just "+" since "n" is the only value being added to the accumulator "total"
numbers.reduce { |total, n| total + n } 

# sum: Functional solution
def functional_sum(numbers)
    numbers.reduce { |total, n| total + n }
end

functional_sum(numbers) # 55

# EXAMPLE 2
# Using reduce to set the lengths of each state name as the value of each key (state name)
states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# lengths: Imperative version
def imperative_lengths(states)
    lengths = {}
    states.each do |state|
        lengths[state] = state.length
    end
    lengths    
end

imperative_lengths(states) # {"Kansas"=>6, "Nebraska"=>8, "North Dakota"=>12, "South Dakota"=>12}

# Using 'reduce', the initial value passed in is "{}". So it becomes ".reduce({})"
# lengths: Functional version

def functional_lengths(states)
    states.reduce({}) do |lengths, state|
        lengths[state] = state.length
        lengths
    end
end

functional_lengths(states) # {"Kansas"=>6, "Nebraska"=>8, "North Dakota"=>12, "South Dakota"=>12}

# Using the merge method to compress code above to a single line

states.reduce({}) { |lengths, state| lengths.merge({state => state.length}) }
# {"Kansas"=>6, "Nebraska"=>8, "North Dakota"=>12, "South Dakota"=>12}