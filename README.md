# Checkpoint 04

> If you have not completed the survey yet,
please do so by the end of the day!

## Instructions

1. Fork this repo
2. Clone your fork
3. Fill in your answers by writing in the appropriate area, or placing an 'x' in
the square brackets (for multiple-choice questions).
4. Add/Commit/Push your changes to Github.
5. Open a pull request.

> **Note**: Only place your answer between backticks. Don't modify the backticks,
or the language specifier after them.

## Ruby Basics & Enumerables (meets Beauty and the Beast)

### Question 1

Define a method called `offer_rose`, which should take one argument named `person`.

When called the method should `puts` "Would you take this rose, `person`, in exchange for giving an old beggar woman shelter from the bitter cold?"

Demonstrate calling the method, passing in "young prince" as the argument.

Write your code here:
```ruby
# code here
def offer_rose(person)
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
end

offer_rose("young prince")
```

### Question 2

Assume the following hash:

```ruby
town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}
```

Using Ruby, remove Belle from the town residents, and
add her to the list of guests in the castle.

Write your code here:
```ruby
# code here
town[:residents].delete_at(1)
```

### Question 3

Assume you have an array of strings representing friend's names:

```ruby
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
```

Using `.each` AND string interpolation, produce output (using `puts`) like so:

```
Belle is friends with Chip Potts
Belle is friends with Cogsworth
Belle is friends with Lumière
Belle is friends with Mrs. Potts
```

Write your code here:
```ruby
# code here
friends.each do |friend|
  puts "Belle is friends with #{friend}"
end
```
## Ruby OOP (meets Lion King)

### Question 4

Create ruby classes for `Animal` and `Lion`.
Each `Animal` should have:

- a `name` attribute
- a `greet` instance method
- Getter and setter for `name`

Create a new `Animal` instance with the name "Pumba"

Make the `Lion` inherit from the `Animal` class.
The `Lion` class should have a `pack` class variable that holds references to each instance created.

Each lion should have:
- a `king` attribute which is a boolean
  - If the instance's `name` is `Simba` make the `king` attribute true

Create a new lion instance with the name `simba`

```ruby
# code here
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    "Hello #{@name}"
  end
end

class Lion < Animal
  attr_accessor :name, :king

  def initialize(name)
    @name = name
    if name == "simba" || name == "Simba"
      @king = true
    else
      @king = false
  end

end
```

## SQL, Databases, and ActiveRecord (meets Aladdin)

### Question 5

Describe what an ERD is, and why we create them for applications. Also give an
example what the attributes and relationships might be for the following
entities (no need to draw an ERD):
* Genie
* Lamp
* Person
* Pet

Your answer:
```
An Entity Relationship Diagram helps us to specify information about a specific entity and how it relates to other entities.

Helps us model our databases to represent real life objects.

Genie
Has 1 person and 1 Lamp
Has name
Has age
Has Powers
Is Free?

Lamp
Has 1 Genie
Found?
Rubbed?
Has Color
Has Genie?


Person
Has 0, 1, or many pets
Has name
Has age
Has genie?
Has lamp?


Pet
has one Person
Has name
Has age
Num Legs

```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use: people and wishes
(one-to-many).

Your answer:
```
A schema is how you want to represent your data in tables and what datatype will hold it.

For example
create table artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  photo_url VARCHAR(512),
  nationality VARCHAR(255)
);

CREATE TABLE songs (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  album VARCHAR(255),
  preview_url VARCHAR(512),
  artist_id INTEGER REFERENCES artists(id)
);
```

### Question 7

Given an active record class `Person`. That inherits from `ActiveRecord::Base` and the following schema :
```ruby
class Person < ActiveRecord::Base
end
```

```sql
CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  age INT NOT NULL
)
```

Write ruby code that will create a person.

Your answer:
```
Replace this with your answer
@person = Person.create(name: params[:name], age: params[:age])
```

Write ruby code that will query for any person that is 15 years of age

Your answer:
```
Replace this with your answer
SELECT * FROM persons WHERE age = 15  === sql

Person.find(params[:age]) == Ruby
```

### Sinatra

Write a route in sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer:
```
get '/oh_hello'
  "<h1>hello world</h1>"
end
```
