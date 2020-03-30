require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base

  p = Store.create ([
    {name: "Burnaby",
    annual_revenue: 300000,
    mens_apparel: true,
    womens_apparel: true},
    {name: "Richmond",
    annual_revenue: 1260000,
    mens_apparel: false,
    womens_apparel: true},
    {name: "Gastown",
    annual_revenue: 190000,
    mens_apparel: true,
    womens_apparel: false}
  ])

  # p2 = Store.create (
  # p2.name = "Richmond"
  # p2.annual_revenue = 126,0000
  # p2.mens_apparel = false,
  # p2.womens_apparel = true
  # )

  # p3 = Store.create (
  # p3.name = "Gastown,"
  # p3.annual_revenue = 1900,00
  # p3.mens_apparel = true,
  # p3.womens_apparel = false
  # )

  puts Store.count
end





