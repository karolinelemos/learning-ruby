def welcome 
	puts "Welcome to the guessing game!"
	puts "What'is your name?"
	nome = gets 
	puts "\n\n"
	puts "Go start the game, #{nome}" 
end

def sort_number 
	puts "I choose a secret number between 0 and 200..."
	sort = 175
	puts "Chosen! You can guess?"
	sort 
end

def get_number(attempts, i, limit)
	puts "\n\n"
	puts "Attempt #{i} of #{limit}"
	puts "Your attempts: #{attempts}"
	puts "Enter a number"

	attemp1 = gets 
	puts "Did you get it right? You typed #{attemp1}"
	attemp1.to_i
end

def verify(attemp1, secret_number)
	right = secret_number == attemp1

	if right
		puts "Congrats! You win! :)"
		return true
	end 

	larger = secret_number > attemp1
	if larger
		puts "The secret number is higher."
	else 
		puts "The secret number is smaller."
	end
	false
end


welcome
secret_number = sort_number 
points = 1000
limit = 3
attempts = []

for i in 1..limit
	attemp1 = get_number attempts, i, limit
	attempts << attemp1
	lost_points = (attemp1 - secret_number) / 2.0
	points -= lost_points
	if verify attemp1, secret_number
		break
	end 
	# break if verify attemp1, secret_number
end

puts "You win #{points} points"

# continue in 5.3