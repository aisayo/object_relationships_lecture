require_relative './order'
require_relative './customer'
require_relative './barista'
require_relative './cli'
require 'pry'

order = Order.new("carmel frappacino", "grande", 3.50)
kellen = Customer.new("Kellen")
barista = Barista.new("Blaire")
CLI.new.intro
puts ""