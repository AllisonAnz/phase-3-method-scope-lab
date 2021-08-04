# Method Scope 
# Link: https://learning.flatironschool.com/courses/2661/pages/method-scope?module_item_id=202298

# Goals
# Explain How Scope Prevents you from accidentally overwriting previous work 
# Differentiate between the functionality of local variables created inside and outside of methods.
# Define methods that pass variables in as arguments

# Variable Names and Scope 
# Variable names should be descriptive of what they hold and also be concise 
# All programming languages have what is called scope 
# Scope means that not all variables exist everywhere in a program 
# If they did, then a variable that you'd be writing in file A could be accidentally overwrite a variable made by a friend in file B 

# What is Scope?
# Methods in Ruby create their own scope. "Scope" refers to the areas of your program in which certain data is 
# available to you. 
# Any local variable created outside of a method will be unavailable inside of a method 
# In addition, local variables created inside of a method (in between def and end of a method) fall out of scope once you're outside the method 

#Example:
    name = "Joe"

    def greeting(name)
        puts "Hello, #{name}"
    end 

    greeting("Sophie")
    #=> Hello, Sophie
    
# It is true that we are setting a variable, name equal to Joe in our code snippet. 
# But we are not using that variable anywhere else in our code 
# The name argument of greeting method is just a placeholder. 
# It means when we call the #greeting method with an argument of "Sophie", set the variable name INSIDE of the method equal to the string argument 

#The greeting variable name is different from the name variable equal to Joe beacuse the greeting method has its own scope. 

#-------------------------------------------------------------------------------------------------------------------------
# Method Scope in Ruby 

# Define our variable evil_monster outside the method princess_peach_castle 
# We access the evil_monster variable, by passing it in as an argument 

evil_monster = "Bowser"

def princess_peaches_castle(evil_monster)
    puts "#{evil_monster} is trying to kidnap Princess Peach!"
end

princess_peaches_castle(evil_monster)
#=> "Bowser is trying to kidnap Princess Peach!"

# So far we've seen that variables defined outside of methods are not available inside methods unless we pass them in as arguments 
# This works the other way around as well. 

# If we define the following method to include a local variable 
def practicing_method_scope
  im_trapped_in_the_method = "You can't access me outside this method!"
end 

# Trying to access that variable elsewhere in our program, outside of this method, will raise the following error:
# im_trapped_in_the_method
#=> NameError: undefined local variable or method `im_trapped_in_the_method' for main:Object 