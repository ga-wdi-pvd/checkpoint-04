# ### Question 1
#
# Define a method called `offer_rose`, which should take one argument named `person`.
#
# When called the method should `puts` "Would you take this rose, `person`, in exchange
#  for giving an old beggar woman shelter from the bitter cold?"
#
# Demonstrate calling the method, passing in "young prince" as the argument.

def offer_rose(person)
    puts "Would you take this rose, #{person}, in exchange for giving " +
         "an old beggar woman shelter from the bitter cold?"
end

offer_rose('young prince')



# Using `.each` AND string interpolation, produce output (using `puts`) like so:
#
# ```
# Belle is friends with Chip Potts
# Belle is friends with Cogsworth
# Belle is friends with Lumière
# Belle is friends with Mrs. Potts


friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
friends.each {|i| puts "Belle is friends with #{i}."}






# ### Question 4
#
# Create ruby classes for `Animal` and `Lion`.
# Each `Animal` should have:
#
# - a `name` attribute
# - a `greet` instance method
# - Getter and setter for `name`
#
# Create a new `Animal` instance with the name "Pumba"
#
# Make the `Lion` inherit from the `Animal` class.
# The `Lion` class should have a `pack` class variable that holds references to each instance created.
#
# Each lion should have:
# - a `king` attribute which is a boolean
#   - If the instance's `name` is `Simba` make the `king` attribute true
#
# Create a new lion instance with the name `simba`



class Animal
    def initialize(name)
        @name = name.capitalize
    end

    attr_accessor :name

    def greet
        puts "Hello friend, my name is #{@name}"
    end
end

class Lion < Animal
  @@pack = []

  def initialize(name)
      @name = name.capitalize
      if @name == 'Simba'
        @king = true
      else
        @king = false
      end
      @@pack.push(self)
  end

  attr_accessor :name

  def list_pack
    return @@pack
  end

end

pumba = Animal.new("Pumba")
simba = Lion.new("simba")
foo = Lion.new("foo")
foo.list_pack
