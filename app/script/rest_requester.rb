require 'rest-client'

# puts "Enter your search query"
# query = gets.chomp

res = RestClient.get 'http://localhost:3000'

puts res.code
puts res.headers
puts res.body