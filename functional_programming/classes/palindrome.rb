class Phrase
    attr_accessor :content
    
    def initialize(content)
        @content = content
    end

    def palindrome?
        processed_content = string.downcase
        processed_content == processed_content.reverse
    end
end

# phrase = Phrase.new("Madam, I'm Adam.")
# phrase.content # "Madam, I'm Adam."

# phrase.content = "Able was I, ere I saw Elba."
# phrase.content # "Able was I, ere I saw Elba."

phrase = Phrase.new("Racecar")
puts phrase.content # "Racecar"

palindrome?(phrase.content) # true

