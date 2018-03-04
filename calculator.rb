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

  def exclaim(number)
    ans = 1
    number.times do 
      ans = ans * number
      number -= 1
    end
    return ans
  end
end



RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1, 3)).to eq(4)
    end
  end

  describe '#subtract' do 
    it  'should return the difference of two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(5, 3)).to eq(2)
    end 
  end

  describe '#multiply' do 
    it 'should return the product of two numbers' do 
      calculator = Calculator.new
      expect(calculator.multiply(4, 3)).to eq(12)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(20, 5)).to eq(4)
    end 
  end

  describe '#square' do 
    it 'should return the square of a number' do
      calculator = Calculator.new
      expect(calculator.square(5)).to eq(25)
    end 
  end

  describe '#power' do 
    it 'should return a number to a specified power' do 
      calculator = Calculator.new
      expect(calculator.power(2, 4)).to eq(16)
    end
  end

  describe '#exclaim' do 
    it 'should return the product of a number, multiplied by all previous numbers before it. (5, 4, 3, ...)' do
      calculator = Calculator.new
      expect(calculator.exclaim(5)).to eq(120)
    end 
  end
end













