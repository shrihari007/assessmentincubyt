# calculator_spec.rb
require 'rspec'
require_relative '../string_split'

RSpec.describe StringSplit do
  let(:string_processor) { StringSplit.new }
  describe '#add_numbers' do
    context "for , as delimiter" do
      it 'returns the sum of the numbers' do
        mock_string = "1,2"
        result = string_processor.add_numbers(mock_string)
        expect(result).to eq(3)
      end
      it 'returns the sum of numbers' do
        mock_string = "0,999"
        result = string_processor.add_numbers(mock_string)
        expect(result).to eq(999)
      end
      it 'returns the sum of numbers' do
        mock_string = "0,0"
        result = string_processor.add_numbers(mock_string)
        expect(result).to eq(0)
      end
      it 'returns 0 for empty' do
        mock_string = ""
        result = string_processor.add_numbers(mock_string)
        expect(result).to eq(0)
      end
      it 'raises error for negative numbers and returns sum for remaining numbers' do
        mock_string = "0,-1,-2,3"
        result = string_processor.add_numbers(mock_string)
        expect(result).to eq(3)
      end
      it 'raises error and returns null' do
        mock_string = "-1,-2"
        result = string_processor.add_numbers(mock_string)
        expect(result).to eq(0)
      end
    end
  end
end
