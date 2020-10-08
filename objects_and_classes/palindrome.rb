class Phrase
    attr_accessor :content
    
    def initialize(content)
        @content = content
    end

    def palindrome?
        processed_content = self.content.downcase
        processed_content == processed_content.reverse
    end

    def louder
        shout = self.content.upcase
    end
end

phrase = Phrase.new("Racecar")
puts phrase.palindrome? # true

p = Phrase.new("yo adrian!")
puts p.louder # "YO ADRIAN!"
