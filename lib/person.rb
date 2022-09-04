class Person
  # your code here
  def initialize(hash) #This will take any hash and set its key/values  as the attributes for the instance of the class created
  hash.each do |key,value| 
    self.class.attr_accessor(key)  #This has to come here because if it comes later it will have denied the method the ability to set the avalues of the key
    self.send("#{key}=",value) #uses the setter method #key= that is created for key in the hash
  end

  end #This method can take any attributes for a class instance.Useful when working with APIs

end
  
#MASS ASSIGNMENT 
#This refers to using a hash to pass the attributes of a class intance instead of writing them out explicitly
#It helps to write the code that is easy to work with durin callling and imprementation.
#Instead of passing the attributes one by one during call, A hash with the attributes and value is passed and an enumeration is done
#assigning each key to an attribute and the values to the attribute values.
#metaprogramming helps avkoid the hussle of using positional arguments that one has to remember the order but instead instead pass by reference which doesn't respect order
#The send method sends an  attribute to the class instance/ the class
#note that "#{key}=" produces a setter method for the attributes

#METAPROGRAMMING concept is the style of program that builds/ writes code for you.It enable reuse  by allowing dynamic values to be passed to the macro methods
#KEYWORD arguments allowing passing of arguments to a method by referencing the name of the argument.It lets you name the arguments you pass and then use them by calling their names within the block
#Kekyword arguments facilitate mass assignment.
#We can create the hash that the method accepts as an argument and then pass it to the method as an arggument which enumerates through the hash and assigns attirbutes.
#syntactic sugar and syntactic vinegar
#In using the attr_accessor, we are still limited. We will turn to setting the getters and setters dynamically.This is possible since the initialize method is a Class method

#metaprogramming, using the send method and using the keyword arguments are some of the ways we program for the future