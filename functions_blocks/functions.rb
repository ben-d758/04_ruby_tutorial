require 'date'

def day_of_the_week(time)
    Date::DAYNAMES[time.wday]
end

day_of_the_week(Time.now)

def square_number(num)
    num*num
end

puts square_number(12)