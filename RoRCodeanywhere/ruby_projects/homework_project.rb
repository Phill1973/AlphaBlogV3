dial_book = {
  "Köln" => "0221",
  "Berlin" =>"030",
  "Bonn" =>"0228",
  "Düsseldorf" =>"0211",
  "Duisburg" =>"0203",
  "Essen" =>"0201",
  "Hamburg" =>"040",
  "Krefeld" =>"02151",
  "Münster" =>"0251",
  "München" =>"089"  
  }

def get_city_names(somehash)
  somehash.each { |k, v| puts k }
end

def get_area_code(somehash, key)
  somehash[key]  
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  
  answer = gets.chomp
  if answer != "Y"
    break
  end
  
 puts "Which city do you want area code for?"
 get_city_names(dial_book)
 puts "Enter your selection"
 prompt = gets.chomp
  
 if dial_book.include?(prompt)
   puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
 else
   puts "You entered a city name not in the dictionary"
 end
  
end