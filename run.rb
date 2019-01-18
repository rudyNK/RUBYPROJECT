require_relative './app/family.rb'

puts "Would you like to add a new family member in the Family addrees book? (Y/N)"
answer = gets.chomp.upcase

while answer == "Y"

    puts "Please Enter the Name"
     name = gets.chomp.capitalize

     puts "Please Enter the Age"
     age = gets.chomp.to_i

     puts "Please Enter the Title"
     title = gets.chomp.capitalize

     puts "Please Enter the Email"
     email = gets.chomp

     puts "Please Enter the Tel"
     tel = gets.chomp.to_i

            newMember = Family.new(name, age, title, email, tel)
            newMember.save
        

    if answer !="Y"
        break
    end

    puts "Would you like to leave the Family address book? (Y/N)"
        again = gets.chomp.upcase

    if again != "N"
        break
    end
end
