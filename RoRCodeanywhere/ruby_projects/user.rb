#Klassen, Objektorientiertes programmieren, Objekte, Initialisierungsmethode, Attribute veränder durch get und set, Instanzvariablen 


module Destructable
  def destroy (anyobject)
    puts "I will destroy the object"
  end
end


class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end  

  def run
    puts "Hey I'm running"
  end
end

  
  class Buyer < User
    def run
      puts "Hey I'm not running and I'm in buyer class"
    
    end
    
  end
  
  class Seller < User
    
  end
  
  class Admin < User
    
  end
  
user = User.new("Phil", "eins@example.com")
user.destroy("myname")

  
=begin
def get_name
    @name
  end  
  
  def set_name=(name)
    @name = name
  end
=end
    


=begin
user = User.new("Phil")
puts user.get_name
user.set_name = "John"
puts user.get_name
=end

user = User.new("Phil", "Phil123@gmail.com")
puts "My user's name is #{user.name} and his email is #{user.email}"
user.name = "John"
user.email = "Johnnyboy91@gmail.com"
puts "My user's new name is #{user.name} and hi email is #{user.email}"

buyer1 = Buyer.new("John Doe", "jonny123@gmail.com")
buyer1.run
seller1 = Seller.new("John Doe1", "jonny1234@gmail.com")
seller1.run
admin1 = Admin.new("John Doe2", "jonny12345@gmail.com")
admin1.run

