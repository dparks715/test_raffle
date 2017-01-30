require 'minitest/autorun'
require_relative 'class_off_one.rb'

class Test_Raffle_Function < Minitest::Test

	def test_true_is_true
		assert_equal(true, true)
	end

	def test_same_number_returns_false
		winning_num = '2337'
		ticket_num = '2337'
		results = not_quite(winning_num, ticket_num)
		assert_equal(false, results)		
	end

	def test_one_off_returns_true
		winning_num = '1245'
		ticket_num = '2245'
		results = not_quite(winning_num, ticket_num)
		assert_equal(true, results)
	end

	def test_two_off_returns_false
		winning_num = '2247'
		ticket_num = '2357'
		results = not_quite(winning_num, ticket_num)
		assert_equal(false, results)
	end
end

class TestReturnRaffle < Minitest::Test
	def test_return_array
		my_num = '1234'
		win_nums = ['5678', '9999', '5656']
		assert_equal([], new_function(my_num, win_nums))
	end

	def test_return_array_of_one
		my_num = '1234'
		win_nums = ['3234', '5555', '6789']
		assert_equal(['3234'], new_function(my_num, win_nums))
	end

end