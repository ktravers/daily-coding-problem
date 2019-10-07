# Given an array of integers, return a new array such that each element at index i of the new array
# is the product of all the numbers in the original array except the one at i.

# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24].
# If our input was [3, 2, 1], the expected output would be [2, 3, 6].

# Follow-up: what if you can't use division?

require 'rspec/autorun'

class CollectionCalculator
  def multiply_array(array)
    array.map do |element|
      (array - [element]).reduce(&:*)
    end
  end
end

describe CollectionCalculator do
  describe "#multiply_array" do
    it "returns a new array" do
      calculator = CollectionCalculator.new

      expect(calculator.multiply_array([3, 2, 1])).to eq [2, 3, 6]
      expect(calculator.multiply_array([1, 2, 3, 4, 5])).to eq [120, 60, 40, 30, 24]
    end
  end
end
