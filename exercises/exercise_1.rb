require_relative '../setup'

puts "Exercise 1"
puts "----------"

=begin
### Exercise 1: Create 3 stores

1. Use Active Record's `create` class method multiple times to create 3 stores in the database:

- Burnaby (annual_revenue of 300000, carries men's and women's apparel)
- Richmond (annual_revenue of 1260000 carries women's apparel only)
- Gastown (annual_revenue of 190000 carries men's apparel only)

2. Output (`puts`) the number of the stores using ActiveRecord's `count` method, to ensure that there are three stores in the database.
=end

# Your code goes below here ...

#Instantiate the store object without saving until the .save is called
@store1 = Store.new
@store1.name = "Burnaby"
@store1.annual_revenue = 300000
@store1.mens_apparel = true
@store1.womens_apparel = true
@store1.save

#Save the record right away and stantiate the object
@store2 = Store.create(name: "Richmond",annual_revenue:1260000,mens_apparel:false,womens_apparel:true)
puts @store2.name

#object will not instantiated until saved
@store3 = Store.new do |s|
  s.name="Gastown"
  s.annual_revenue=190000
  s.mens_apparel=true
  s.womens_apparel=false
end
@store3.save

puts @store3.name


puts "Store count:", Store.count