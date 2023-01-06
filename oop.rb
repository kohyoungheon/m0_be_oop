# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize (name)
        @name = name
        @color = "silver"
    end
    
    def say(string)
    return "*~*" + string  
    end
end
unicorn1 = Unicorn.new("Sparklez")
puts unicorn1.say("NHEIGHHHH")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :thirsty
    def initialize(name,pet="bat",thirsty="true")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Alucard")
p vampire1.thirsty
vampire1.drink
p vampire1.thirsty


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name,rider,color,is_hungry=true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
        @eat_counter = 0
    end
    
    def eat
        if @eat_counter < 4
            puts "OM NOM NOM NOM NOM..."
            @eat_counter += 1
        else
            @is_hungry=false
            puts "OWWWIEE MY TUMMY HURTYY"
        end

    end

end

dragon1 = Dragon.new("Balerion the Black Dread","Aegon Targaryen","Black")
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_accessor :name, :age, :is_adult, :is_old, :has_ring
    def initialize(name,disposition,age=0,is_adult=false,is_old=false,has_ring=false)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = is_adult
        @is_old = is_old
        @has_ring = has_ring
    end

    def celebrate_birthday 
        p "HAPPY BIRTHDAY #{@name}!"
        @age += 1
    end

    def check_adult
        if @age >= 33
            @is_adult = true
        end

    end

    def check_old
        if @age >= 101
            @is_old = true
        end
    end

    def check_frodo
        if @name = "Frodo"
            puts "TRICKSY LITTLE HOBBITSESSSSSS"
            @has_ring = true
        end
    end
end

puts "********************************"
#Create new hobbit instance
hobbit1=Hobbit.new("Frodo","calm",31)
# code to display hobbit attributes to check if our code works
p "age:" + hobbit1.age.to_s + "/" + "is_adult?:"+ hobbit1.is_adult.to_s + "/"+ "is_old?:" + hobbit1.is_old.to_s + "/" + "has_ring?:" + hobbit1.has_ring.to_s
# Running 2 birthdays to add 2 to Frodo's age.
hobbit1.celebrate_birthday
hobbit1.celebrate_birthday
# Checking Frodo's new age.
p hobbit1.age
# Running check_adult and check_frodo to see if attributes change
hobbit1.check_adult
hobbit1.check_frodo
#code to display changed attributes
p "age:" + hobbit1.age.to_s + "/" + "is_adult?:"+ hobbit1.is_adult.to_s + "/"+ "is_old?:" + hobbit1.is_old.to_s + "/" + "has_ring?:" + hobbit1.has_ring.to_s

#changing Frodo's age to 101
hobbit1.age = 101
#check to see if he's old now
hobbit1.check_old
#Code to display hobbit attributes
p "age:" + hobbit1.age.to_s + "/" + "is_adult?:"+ hobbit1.is_adult.to_s + "/"+ "is_old?:" + hobbit1.is_old.to_s + "/" + "has_ring?:" + hobbit1.has_ring.to_s