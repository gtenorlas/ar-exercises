require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

=begin
### Exercise 2: Update the first store

1. Load the first store (with `id = 1`) from the database and assign it to an instance variable `@store1`.
2. Load the second store from the database and assign it to `@store2`.
3. Update the first store (`@store1`) instance in the database. (Change its name or something.)
=end

# Your code goes here ...

store1 = Store.find_by(id: 1)
store1.name = "Mississauga"
store1.save

puts store1.name

store2 = Store.find_by(name: "Richmond")
puts store2.inspect