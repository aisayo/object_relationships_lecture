class CLI 

    def intro 
        puts "Welcome to Starbucks, let's start with your name"
        input = gets.strip
        aysan = Customer.new(input)
        greeting(aysan)
    end 

    def greeting(customer)
        puts "awesome, welcome #{customer.name}, what would you like to order?"
        input = gets.strip.split(", ")
        make_order(input, customer)
    end 
    
    def make_order(input, aysan)
        order = Order.new(input[0], input[1], input[2])
        order.customer = aysan
        order.barista = Barista.new("Jamie")
        order
        print_order(order)
    end 

    def print_order(order)
        puts "~~~~~~~~~~~~~~~~~~"
        puts "Drink: #{order.drink}"
        puts "Size: #{order.size}"
        puts "Total: #{order.total}"
        puts "~~~~~~~~~~~~~~~~~~"
        binding.pry
    end 
end 