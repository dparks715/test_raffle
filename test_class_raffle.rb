require 'minitest/autorun'
require_relative 'class_raffle.rb'

class Raffle_class < Minitest::Test

	def test_1_equal_1
		assert_equal(1,1)
	end

	def test_number_exists
		ticket_num = '1'
		winning_num_array = []
		assert_equal(false, raffle_function(ticket_num, winning_num_array))
	end

	def test_returns_true
		ticket_num = '1234'
		winning_num_array = ['1234']
		assert_equal(true, raffle_function(ticket_num, winning_num_array))
	end

	def test_ticket_returns_false_in_array_of_multi_numbers
		ticket_num = '1234'
		winning_num_array = ['1235', '1555', '2345']
		assert_equal(false, raffle_function(ticket_num, winning_num_array))
	end

	def test_ticket_returns_true_in_array_of_multi_numbers
		ticket_num = '1234'
		winning_num_array = ['1234', '1555', '2345']
		assert_equal(true, raffle_function(ticket_num, winning_num_array))
	end
end