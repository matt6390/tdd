require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end




RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end

  describe '#subtract' do 
    it  'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(5, 3)
      expect(result).to eq(2)
    end 
  end

  describe '#multiply' do 
    it 'should return the product of two numbers' do 
      calculator = Calculator.new
      result = calculator.multiply(4, 3)
      expect(result).to eq(12)
    end
  end

  describe '#divide' do
    it 'should divide two numbers and return the answer' do
      calculator = Calculator.new
      result = calculator.divide(20, 5)
      expect(result).to eq(4)
    end 
  end

  describe '#square' do 
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end 
  end

  describe '#power' do 
    it 'should return a number to a specified power' do 
      calculator = Calculator.new
      result = calculator.power(2, 4)
      expect(result).to eq(16)
    end
  end
end













