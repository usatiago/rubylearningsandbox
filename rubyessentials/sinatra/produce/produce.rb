require "sinatra"
set :bind, "0.0.0.0"

get("/") do
    "Welcome to Tiago's Produce shop"
end

get("/apple") do 
    "<h1>Here's a juicy, delicious apple</h1>"
end

get("/banana") do
    "<h1>Here's a ripe, delicious banana</h1>"
end