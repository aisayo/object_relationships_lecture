# has many orders 
# has many baristas through orders 

class Customer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end 

    def save 
        @@all << self 
    end 

    # showing the has many relationship
    def orders # return all the associated orders / reader method 
        Order.all.select do |order| #select will returnn an array 
            order.customer == self #condition true or false 
        end 
    end 

    def baristas 
        orders.map do |order| #create a new array 
            order.barista # with all of associated barista 
        end 
    end 

end 