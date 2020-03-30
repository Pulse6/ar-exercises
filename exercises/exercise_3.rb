require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base

  @store = Store.find_by(id: '3')
  @store.destroy

  # Store.destroy_by(id: '3')

  # puts Store.count
end