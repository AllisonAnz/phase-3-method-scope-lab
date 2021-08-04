def rescue_princess_peach
  status = "rescued"
  puts "Hooray! Mario has rescued Princess Peach."
end

## Comment the below back in to see method scope in action!

# rescue_princess_peach
# puts status

# Hooray! Mario has rescued Princess Peach.
# lib/rescue_princess_peach.rb:9:in `<main>': undefined local variable or method `status' for main:Object (NameError) 

# We get a name error b/c status is undefined 
# The variable is defined inside a method and are not available outside the method