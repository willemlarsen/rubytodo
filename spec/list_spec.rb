require 'rspec'
require 'list.rb'

describe 'List' do
	it 'creates a new instance of List' do
		test_list = List.new
		expect(test_list).to be_an_instance_of List
	end
end
