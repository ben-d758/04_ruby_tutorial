# Returns true for a palindrome, otherwise false

def palindrome?(string)
    string == string.downcase.reverse
end

# puts palindrome?("Racecar")

def email_parts(first_name, last_name)
    "#{first_name.downcase}_#{last_name.downcase}@example.com"
end

