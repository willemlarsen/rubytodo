require 'rspec'

describe 'hash_spike' do
	it 'initializes a hash with string keys' do
		test_hash = {'a' => "monkeys"}
		expect(test_hash['a']).to eq("monkeys")
	end
	it 'includes a function in hash' do
		@i = 0
		def monkey_function
			"monkeys" + @i.to_s
		end
		@i = 1
		test_hash = {'a' => lambda {monkey_function} }
		@i = 2
		expect(test_hash['a'].call).to eq("monkeys2")
	end
end

