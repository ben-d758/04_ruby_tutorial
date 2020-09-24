zip_code = /\d{5}/

no_match = "no match".match(zip_code) 
# p no_match # nil

match = "Beverly Hills 90210".match(zip_code)
# p match # #<MatchData "90210">

s = "Beverly Hills 90210 was a '90s TV show set in Los Angeles."
# puts "It's got a Zip Code!" if s.match(zip_code)

s += " 91125 is another ZIP code in the Los Angeles area."

# Use String#scan method to find an array of matches:
p s.scan(zip_code) # ["90210", "91125"]

# Find all multi-letter words that are in all CAPS:
p s.scan(/[A-Z]{2,}/)
