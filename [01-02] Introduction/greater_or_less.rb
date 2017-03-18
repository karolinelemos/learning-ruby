puts "Welcome to the guessing game!"
puts "What'is your name?"
nome = gets 

puts "\n\n"
puts "Go start the game, " + nome 
puts "I choose a secret number between 0 and 200..."
secret_number = 175
puts "Chosen! You can guess?"

limit = 3 

for i in 1..limit
	puts "\n\n"
	puts "Attempt " + i.to_s + " of " + limit.to_s
	puts "Enter a number"

	attemp1 = gets 
	puts "Did you get it right? You typed " + attemp1 

	right = secret_number == attemp1.to_i

	if right
		puts "Congrats! You're right :)"
		break
	else
		larger = secret_number > attemp1.to_i
		if larger
			puts "The secret number is higher."
		else 
			puts "The secret number is smaller."
		end
	end 
end
