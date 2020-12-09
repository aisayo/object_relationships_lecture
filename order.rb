# associated with its parent object :customer
# belongs to a customer
# belongs to a barista 
# join model 


# setter and getter that allows us to associate to the customer 

class Order 

    @@all = [] #class variable 

    attr_accessor :drink, :size, :total, :customer, :barista

    def initialize(drink, size, total)
        @drink = drink 
        @size = size
        @total = total 
        save 
    end 
    
    def save 
        @@all << self # referring the instance 
    end 

    def self.all 
        @@all 
    end 

end 

# dot notation => .customer 