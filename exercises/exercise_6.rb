require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: "1")
puts @store1
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Gordon", last_name: "Aguilar", hourly_rate: 60)
@store1.employees.create(first_name: "Bartosz", last_name: "Key", hourly_rate: 60)
@store1.employees.create(first_name: "Elana", last_name: "Carpenter", hourly_rate: 60)

@store2 = Store.find_by(id: "2")
puts @store2
@store2.employees.create(first_name: "Ammarah", last_name: "Garcia", hourly_rate: 60)
@store2.employees.create(first_name: "Killian", last_name: "Costa", hourly_rate: 60)
@store2.employees.create(first_name: "Riyad", last_name: "Herman", hourly_rate: 60)
@store2.employees.create(first_name: "Emilio", last_name: "Hendrix", hourly_rate: 60)


# table.references :store
# table.column :first_name, :string
# table.column :last_name, :string
# table.column :hourly_rate, :integer
# table.timestamps null: false