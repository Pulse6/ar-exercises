require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  @made = Store.all
  tot = 0
  # puts @made.annual_revenue
  @made.each do |store|
    tot += store.annual_revenue
  end

  puts tot
end