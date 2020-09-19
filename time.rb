require 'date'
# s = String.new("A man, a plan, a canal—Panama!")

# t = s.split(", ")
# p t

# a = Array.new
# a << 3 << 4
# puts a

# now = Time.now
# puts now

moon_landing = Time.new(1969, 7, 20, 20, 17, 40)
# puts moon_landing.day

# puts now - moon_landing

# DAYNAMES = Date::DAYNAMES
DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
puts DAYNAMES[moon_landing.wday]
puts DAYNAMES[Time.now.wday]


