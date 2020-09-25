zip_code = /\d{5}/

no_match = "no match".match(zip_code) 
# p no_match # nil

match = "Beverly Hills 90210".match(zip_code)
# p match # #<MatchData "90210">

s = "Beverly Hills 90210 was a '90s TV show set in Los Angeles."
# puts "It's got a Zip Code!" if s.match(zip_code)

s += " 91125 is another ZIP code in the Los Angeles area."

# Use String#scan method to find an array of matches:
s.scan(zip_code) # ["90210", "91125"]

# Find all multi-letter words that are in all CAPS:
s.scan(/[A-Z]{2,}/)

# ==========================================================
# Splitting on regexes
# >> "ant bat cat duck".split(" ") # ['ant', 'bat', 'cat', 'duck']

# achieve the same result splitting on whitespace with regex
"ant bat cat duck".split(/\s+/)

# can get the same result if the strings are separated by multiple spaces, tabs, newlines, etc:
"ant    bat\tcat\nduck".split(/\s+/)

# calling "split" with no arguments will split on whitespace

#  ==========================================================
test_zip_code = /\d{5}.\d{4}/
match = "This is the longer form Zip Code: 10118-0110".match(test_zip_code)
match # <MatchData "10118-0110">


sonnet = "Let me not to the marriage of true minds
Admit impediments. Love is not love
Which alters when it alteration finds,
Or bends with the remover to remove.
O no, it is an ever-fixed mark
That looks on tempests and is never shaken
It is the star to every wand'ring bark,
Whose worth's unknown, although his height be taken.
Love's not time's fool, though rosy lips and cheeks
Within his bending sickle's compass come:
Love alters not with his brief hours and weeks,
But bears it out even to the edge of doom.
  If this be error and upon me proved,
  I never writ, nor no man ever loved."

p sonnet.split(/\n/)
sonnet.split(/\n/).length # 14



