require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employees < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, length: {in: 40..200}
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true}
  validates :annual_revenue, length: {minimum: 0}
end


# Employees must always have a first name present
# Employees must always have a last name present
# Employees have a hourly_rate that is a number (integer) between 40 and 200
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)

# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more


# create_table :employees do |table|
#   table.references :store
#   table.column :first_name, :string
#   table.column :last_name, :string
#   table.column :hourly_rate, :integer
#   table.timestamps null: false

#   t.column :name, :string
#   t.column :annual_revenue, :integer
#   t.column :mens_apparel, :boolean
#   t.column :womens_apparel, :boolean
#   t.timestamps null: false