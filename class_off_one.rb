def not_quite(winning_num, ticket_num)
	matches = 0
	index_position = 0

	ticket_num.length.times do
		if ticket_num[index_position] == winning_num[index_position]
			matches += 1
		end
		index_position += 1		
	end
	winning_num.length - matches == 1

end