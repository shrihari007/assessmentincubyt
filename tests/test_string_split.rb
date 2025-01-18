# calculator_spec.rb
require 'rspec'
require_relative '../string_split'

RSpec.describe '#add_numbers' do
    it 'returns the sum of the numbers' do
      mock_string = "1,2"
      result = add_numbers(mock_string)
      expect(result).to eq(3)
    end
end