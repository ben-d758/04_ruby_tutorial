require 'sinatra'
require_relative './functions_blocks/day'

# get '/' do
#     "Hello, world! Happy #{day_of_the_week(Time.now)}—now from a file!"
# end

get '/' do 
    greeting(Time.now)
end 