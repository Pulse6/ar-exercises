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
  validates :annual_revenue, numericality: {greater_than: 0}
end

puts "what is the store name?"
storeName = gets.chomp

p = Store.create(name: storeName, annual_revenue: -1)
# puts p
# byebug
p.valid?
puts p.errors.messages

# puts storeName


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