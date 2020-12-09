# has many customers, through orders 
# has many orders

class Barista

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end
    
    def save 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

        # showing the has many relationship
        def orders # return all the associated orders / reader method 
            Order.all.select do |order| #select will returnn an array 
                order.barista == self #condition true or false 
            end 
        end 
        
        # reader method 
        def customers  
            orders.map do |order| #create a new array 
                order.customer # with all of associated barista 
            end 
        end 

end 