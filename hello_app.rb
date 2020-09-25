require 'sinatra'
load 'functions_blocks/day.rb'

get '/' do
    "Hello, world! Happy #{day_of_the_week(Time.now)}—now from a file!"
end