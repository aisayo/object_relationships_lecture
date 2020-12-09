# Object Relationships

## Quick Review

- What is the difference between a class and instance?
    # class is a factory, instance is a product of the factory
- What method creates a new instance?
    # .new 
- How do we dedicate attributes to objects?
    # attr_accessor // setter + getter method
- What is an `attr_accessor`?
    # setter and getter 
- How do we write a setter and getter method?
    # setter method 
        def name=(name)
            @name = name 
        end 
    # getter method 
        def name
            @name
        end 

- What is an instance variable, and what is the scope?
    # scope => within the class, instance methods

- What is the goal of the `@@all` variable?
    # an array of all instances, class can keep track of all its produced objects

- How do we `save` an instance?
    # @@all << self 

- What is self? How to identify?
    # either the instance or the class
    # class methods => class
    # instance method => instance 
def self.all #self is ?? class 
self # still the class 
end

## Belongs to
    - child object 
    - single relationship => .customer 
    - reader and writer for association 
    - can it relate to different models, but only 1 instance of those models 



## Has Many
    - multiple relationships => .orders
    - array that collects all the related objects 
    - parent object 




## Has Many Through
 - one model joins two unrelated models through itself


Starbucks Domain:

- customer - has many orders, has many baristas through their orders 
- order - belong to customer, belong to a barista 
- barista - has many orders, has many customers through thee orders