class Vehicle
  attr_accessor :name, :color, :speed

  def description
    puts @name
    puts "has a #{@color} color"
    puts "speed: #{@speed}"

    # def move
    # puts "default"
    # end
  end
end




# class Motor < Vehicle
# end
# bw = Motor.new
# bw.move



#
# class Item
#   attr_accessor :name, :price, :usage
#   def description
#     puts "#{@name} super sweet"
#   end
# end
#
#
#
# class Sweet < Item
#
#   def description
#     puts "#{@name} super sweet"
#   end
# end
#
# class Cigarette < Item
#
#   def description
#     puts "#{@name} Smoking"
#   end
# end
#
#
# marlboro = Cigarette.new
# marlboro.price = 10
# marlboro.usage = "to smoke"
# marlboro.name = "Marlboro"
#
#
# marlboro = Sweet.new
# marlboro.price = 10
# marlboro.usage = "to smoke"
# marlboro.name = "Marlboro"
#

=begin
require 'colorize'
def fruit_question(price)


 fruits = {
    A: {name: "Apple", price: 4},
    B: {name: "Banana", price: 3},
    C: {name: "Lemon", price: 5}
  }



fruits = {
  "A" => {"apple" => 4},
  "B" => {"banana" => 3},
  "C" => {"lemon" => 5}
}


#  apple_price = 4
#  banana_price = 8
#  lemon_price = 3

  puts "\nWelcome To My Shop".colorize(:blue)
  if price >= 10
    puts "\nThe Total is: #{price}".colorize(:magenta)
  elsif price < 10 && price > 0
    puts "\nThe Total is: #{price}".colorize(:green)

  end

  puts "\nSelect a fruit:\n
  A) Apple\n
  B) Banana\n
  C) Lemon\n
  [A-C]:"

  fruit = gets.chomp.upcase
  if fruit == 'A'
  #  puts "You chose: Apple\nPrice per kg: #{fruits["A"]["apple"]}\n"
    puts "You chose: Apple\nPrice per kg: #{fruits["A"]["apple"]}\n"
    puts 'Do you need more vitamines?'
    fruit_question price + fruits["A"]["apple"]

  elsif fruit == 'B'
    #puts "You chose: Banana\nPrice per kg: #{fruits["B"]["banana"]} \n"
    puts "You chose: Banana\nPrice per kg: #{fruits["B"]["banana"]} \n"
    puts 'Do you need more vitamines?'
    fruit_question price + fruits["B"]["banana"]

  elsif fruit == 'C'
  #  puts "You chose: Lemon\nPrice per kg: #{fruits["C"]["lemon"]} \n"
    puts "You chose: Lemon\nPrice per kg: #{fruits["C"]["lemon"]} \n"
    puts 'Do you need more vitamines?'
    fruit_question price + fruits["C"]["lemon"]
  else puts 'Correct you input please?'
       puts 'Do you need more vitamines?'
       fruit_question price + 0
  end
end
fruit = fruit_question 0








################################################################################
require 'colorize'


fruits = {
  A: {
    name: 'Apple',
    price: 4
  },
  B: {
    name: 'Banana',
    price: 3
  },
  C: {
    name: 'Lemon',
    price: 5
  }
}

ordered = []

# methode starts HERE
def chooseFruits(fruits, ordered)
  fruits.each do |choice, fruit|
    puts "#{choice}: #{fruit[:name]}, Price: $#{fruit[:price]}".colorize(:green)
  end

  puts "choose one:[#{fruits.keys.join(' , ')}]"

  # get user input, convert it to uppercase, convert it to symbol
  choice = gets.chomp.upcase.to_sym

  # is the choice of the user included in "keys" of the "array" in this case fruits
  fruits.keys.include? choice
  puts "You chose: #{fruits[choice][:name]}"

  # add each choice to the array "ordered"
  ordered << fruits[choice]

  puts 'So far you ordered:'

  ordered.each do |fruit|
    puts "• #{fruit[:name]} #{fruit[:price]}".colorize(:blue)
  end

  # methode is called HERE
  chooseFruits(fruits, ordered)
end
# methode ends HERE
# methode is "Activated here" a.k.a. called HERE
chooseFruits(fruits, ordered)

###########################################################################










=end
