# class EscapeCar
#     def initialize(color)
#       @color = color
#       @wheels = 4
#       @gear = "park"
#     end
  
#     def change_gear(new_gear)
#       @gear = new_gear
#     end
#   end
  
#   car1 = EscapeCar.new("blue")
#   p car1
#   car1.change_gear("drive")
#   p car1

#   Dino Class Specifications
# In a new file, write a class called Dino.
# It should have a dynamic name attribute.
# It should have a dynamic period attribute.
# It should have a color attribute, that is green for every instance.
# It should have a roar method that roars a sentence including its name, when called.
# It should have a diet attribute that defaults to "vegetarian" but, if data is passed in, it can be dynamic.
# It should have a print_welcome method that prints a sentence welcoming the Dino to the world. 
# The welcome message should vary based on the period the Dino existed (Triassic, Jurassic, and Cretaceous are examples).

# class Dino
#     attr_reader :name
#     def initialize(name, period, diet = "vegetairan")
#         @name = name
#         @period = period
#         @color = "green"
#         @diet = diet
#     end

#     def change_diet(new_diet)
#         @diet = new_diet
#     end

#     def roar
#         "Fear me I am #{@name}!!!"
#     end

#     def welcome
#         "You are in the #{@period}!"
#     end
#  end

# dino1 = Dino.new("Stego", "Jurassic")
# p dino1
# dino1.change_diet("Carno")
# p dino1


# p dino1.roar
# p dino1.welcome

# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name, color = silver)
        @name = name
        @color = color
    end

    def say(magic_talk)
        "*~* #{magic_talk} *~*"
    end
 end

charlie = Unicorn.new("Charlie", "white")
p charlie
p charlie.say("Ahh, they took my kidney!")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end

    def drink
        @thirsty = false
    end
end

count = Vampire.new("Count")
p count
count.drink
p count



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
