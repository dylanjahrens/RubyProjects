#!/usr/bin/env ruby

puts
puts "-----WELCOME TO RUBY GUESSING GAME-----"
puts
print "What is your name? "
user_name = gets.chomp
max_guesses = 3

puts "Hello, #{user_name}, welcome to guessing game"
print "Pick a number between 1 and 10, you have #{max_guesses} guesses: "

guesses = 0
number =  rand(1..10)
puts number 

while guesses < max_guesses
	number_guess = gets.chomp.to_i
	guesses +=1
	if number_guess == number
		abort("Correct! the answer was #{number_guess}")
	elsif guesses < max_guesses
		if number -1 == number_guess || number +1 == number_guess
			puts "Very Close!"
		end
		print "Wrong! Try again, Guess #{guesses+1}: "
	end
	
end

puts "Sorry, the number was #{number}, goodbye!"




