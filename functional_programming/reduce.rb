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


