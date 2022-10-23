#!/usr/bin/env ruby

require_relative 'classes/dice'

counter = 1

roll = DiceSet.new    

puts '------------------------'
puts '--Welcome to Dice Roll--'
puts '------------------------'
puts 

loop do
    puts '--Type R to roll or Q to quit--'
    puts
    input = gets.chomp
    if input == 'Q'
      exit!
    else
      roll.first_dice = rand(7)
      roll.second_dice = rand(7)
      puts "Roll #{counter}:"
      puts roll.roll_dice
      puts
      counter +=1
    end
end
