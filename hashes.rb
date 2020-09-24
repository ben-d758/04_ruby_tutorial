user = {}
user["first_name"] = "Michael"
user["last_name"] = "Hartl"

# puts user["first_name"]

# user.each { |k| print(k) }

moonman = { "first_name" => "Buzz", "last_name" => "Aldrin"}
# puts moonman

# ":name" -->> indicates a hash key called "name"

user = { :name => "Michael", :email => "michael@example.com"}
# hash can also be written as below:
user = { name: "Michael", email: "michael@example.com"} # "name:" has no meaning by itself
# ":name =>" and "name:" are only the same in hashes

user[:email] # michael@example.com

# puts user[:password] # nil


# ===========================
# NESTED HASHES

params = {}
params[:user] = { name: "Michael", email: "mhartl@example.com" }

params[:user] # {:name=>"Michael", :email=>"mhartl@example.com"}
puts params[:user][:email] # mhartl@example.com



