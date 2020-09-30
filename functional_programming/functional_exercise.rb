# Using 'map', write a function that takes in the 'states' variable and returns an array of URLs of the form
    # "https://example.com/<urlified form>"

states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Imperative version

def imperative_url(states)
    urls = []
    states.each do |state|
        urls << "https://example.com/#{state.downcase.split.join("-")}"
    end
    urls
end

imperative_url(states)
# ["https://example.com/kansas", "https://example.com/nebraska", "https://example.com/north-dakota", "https://example.com/south-dakota"]

# Functional version

def functional_url(states)
    states.map { |state| "https://example.com/#{state.downcase.split.join("-")}" }
end

functional_url(states)
# ["https://example.com/kansas", "https://example.com/nebraska", "https://example.com/north-dakota", "https://example.com/south-dakota"]

