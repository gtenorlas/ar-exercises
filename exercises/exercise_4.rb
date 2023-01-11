require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

=begin
### Exercise 4: Loading a subset of stores

1. Borrowing and modifying the code from Exercise one, create 3 more stores:

- Surrey (annual_revenue of 224000, carries women's apparel only)
- Whistler (annual_revenue of 1900000 carries men's apparel only)
- Yaletown (annual_revenue of 430000 carries men's and women's apparel)

2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
3. Loop through each of these stores and output their name and annual revenue on each line.
4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
=end

# Your code goes here ...
store = Store.new
store.name = "Surrey"
store.annual_revenue = 224000
store.mens_apparel = false
store.womens_apparel = true
store.save

store = Store.new
store.name = "Whistler"
store.annual_revenue = 1900000
store.mens_apparel = true
store.womens_apparel = false
store.save 

store = Store.new
store.name = "Yaletown"
store.annual_revenue = 430000
store.mens_apparel = true
store.womens_apparel = true
store.save 

men_stores = Store.where(mens_apparel:true).order(created_at: :asc)
men_stores.each do |x|
  puts x.inspect
end

women_stores = Store.where("womens_apparel = ? and annual_revenue < ?", true,1000000)
women_stores.each do |x|
  puts x.inspect
end

store = Store.new
store.name = "Ya"
store.annual_revenue = 430000
store.mens_apparel = true
store.womens_apparel = true
store.save 

store = Store.new
store.name = "Yaletown"
store.annual_revenue = -10
store.mens_apparel = true
store.womens_apparel = true
store.save 