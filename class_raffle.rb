# take our number and see if it matches any in a set of numbers(array)

def raffle_function(our_ticket, winning_num_array)
#	if winning_num_array.include?(our_ticket)
#		true
#	else
#		false
#	end
	counter = []
	winning_num_array.each do |ticket|
		if our_ticket == ticket
			counter << ticket
		end
	end
	if counter.length > 0
		true
	else
		false
	end
end