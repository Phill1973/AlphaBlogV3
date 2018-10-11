=begin
#puts "Hello enter in your first name please"
#first_name = gets.chomp

#puts "Hello enter in your last name please"
#last_name = gets.chomp

#puts "Welcome #{first_name} #{last_name} to the playground!"  
#full_name = first_name + last_name

#puts "Welcome 2 the playground #{full_name} :D"
#name_length = full_name.length
#puts "Your name has #{name_length} characters"
puts "Your name in reverse reads #{full_name.reverse}"
=end
def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end
def divide(first_number, second_number)
  first_number.to_f / second_number.to_f
end
def subtract(first_number, second_number)
  first_number.to_f - second_number.to_f
end
def mod(first_number, second_number)
  first_number.to_f % second_number.to_f
end


puts "What you wanna do 1) multiply, 2) divide, 3) subtract, 4) find remainder?"
prompt = gets.chomp

puts "Please enter your first Number"
first_number = gets.chomp
#first_number = first_number.to_f
puts "Please enter your second Number"
second_number = gets.chomp
#second_number = second_number.to_f

if prompt == "1"
  puts "Your have choosen to multiply #{first_number} with #{second_number}"
  result = multiply(first_number, second_number)
  #puts result
  
elsif prompt == "2"
    puts "Your have choosen to divide #{first_number} with #{second_number}"
    result = divide(first_number, second_number)
    #puts result
  
elsif prompt == "3"
    puts "Your have choosen to substract #{first_number} with #{second_number}"
    result = subtract(first_number, second_number)
    #puts result
  
elsif prompt == "4"
    puts "Your have choosen to find the remainder #{first_number} with #{second_number}"
    result = mod(first_number, second_number)
    #puts result
  
else 
    puts "You have choosen an invalid choice"
end

puts "The result is #{result}"


=begin
puts "Both numbers multiplied is \'#{multiply(first_number, second_number)}\'"
puts "The first number devided by the second numer is \'#{divide(first_number, second_number)}\'"
puts "The first number subtracted by the second numer is \'#{subtract(first_number, second_number)}\'"
puts "The first number mod by the second numer is \'#{mod(first_number, second_number)}\'"
=end