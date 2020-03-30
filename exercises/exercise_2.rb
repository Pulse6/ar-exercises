require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base

  @store1 = Store.find_by(id: '1')
  @store2 = Store.find_by(id: '2')

  # @store1.name = 'changed Name'
  # @store1.save

  @store1.update(name:'changed Name')
end