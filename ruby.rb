# My register

class Grandparent

    attr_accessor :person, :age

    def initialize (person, age)
        @person = person
        @age = age
    end
end

class Parent < Grandparent

    attr_accessor :person1, :age1

    def initialize (person1, age1)
        @person1 = person1
        @age1 = age1
    end
end

class Child < Parent

    attr_accessor :person2, :age2

    def initialize (person2, age2)
        @person2 = person2
        @age2 = age2
    end
end







puts "Genealogy 3.0 Software by Craft Academy. 
Enter your name:"
person2 = gets.chomp

puts "and your age:"
age2 = gets.chomp

Child_me = Child.new("#{person2}", "#{age2}")


############################## Parent array  ##################################

parent_array = [ ]
keep_going = 'yes'
    while
        keep_going != 'no' 
            puts "Name of parent:"
            person1 = gets.chomp
            puts "Age of parent:"
            age1 = gets.chomp
            
            P = {name: person1 , age: age1}
            parent_array.push P 
               
        puts "Add more parents (yes or no)?:"
        keep_going = gets.chomp  
    end


############################## Grandparent array  ##################################

grandparent_array = [ ]
keep_going1 = 'yes'
    while
        keep_going1 != 'no' 
            puts "Name of grandparent:"
            person = gets.chomp
            puts "Age of grandparent:"
            age = gets.chomp
            
            GP = {name: person , age: age}
            grandparent_array.push GP   
               
        puts "Continue (yes or no)?:"
        keep_going1 = gets.chomp  
    end


#####################################################################################

puts "So #{person2}, your parents are:"

parent_array.each do |value|
    puts "#{value[:name]} with an age of #{value[:age]}"
  end



















