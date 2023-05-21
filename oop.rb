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


class Dragon
    def initialize (name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
        @tummy_log = 0
    end

    def eat(knight = 1)
        @tummy_log += knight
        if @tummy_log < 4
            return is_hungry = true, "Need more humans"
        elsif @tummy_log == 4
            return is_hungry = false, "I am full"
        else 
            is_hungry = true, "[Pukes in dragon]", @tummy_log = 0
        end
    end
end

doug = Dragon.new("Doug", "The Dude", "Mauve")
p doug
p doug.eat(1)
p doug.eat
p doug.eat
p doug.eat
p doug.eat(3)
p doug.eat
p doug.eat
p doug.eat


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is Frodo, true, if not, false.

class Hobbit
    attr_reader :has_ring
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @young = false
        @adult = false
        @old = false
        @has_ring = false

        if @name == "Frodo"
            @has_ring = true
        end

        if @age < 33
            return @young = true, @adult = false, @old = false
        elsif @age >= 101 
            return @young = false, @adult = true, @old = true
        else
            return @young = false, @adult = true, @old = false
        end
    end

    def celebrate_birthday (birthday_amount = 1)
        @age += birthday_amount
        if @age < 33
            return @young = true, @adult = false, @old = false
        elsif @age >= 101 
            return @young = false, @adult = true, @old = true
        else
            return @young = false, @adult = true, @old = false
        end
    end

end

frodo = Hobbit.new("Frodo", "Happy", 40)
sam = Hobbit.new("Sam", "Determined", 32)
bilbo = Hobbit.new("Bilbo", "Jelly")
p frodo
p sam
p bilbo
sam.celebrate_birthday
bilbo.celebrate_birthday(101)
p frodo
p sam
p bilbo
p "It is #{frodo.has_ring} Frodo does carry the ring."