=begin
- Stores must always have a name that is a minimum of 3 characters
- Stores have an annual_revenue that is a number (integer) that must be 0 or more
=end
class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  has_many :employees
end
