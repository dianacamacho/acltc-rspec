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

  def cube(number)
    return number ** 3
  end

  def remainder(number_one, number_two)
    return number_one % number_two
  end

  def factorial(number)
    factors = (1..number - 1).to_a
    product = number

    factors.each do |factor|
      product = product * factor
    end

    return product   
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = Calculator.new
      sum = calc.add(2,4)
      expect(sum).to eq(6)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calc = Calculator.new
      difference = calc.subtract(5,2)
      expect(difference).to eq(3)
    end
  end

  describe '#square' do
    it 'should return the product of a numbers' do
      calc = Calculator.new
      product = calc.square(5)
      expect(product).to eq(25)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calc = Calculator.new
      product = calc.multiply(2,5)
      expect(product).to eq(10)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calc = Calculator.new
      quotient = calc.divide(10,2)
      expect(quotient).to eq(5)
    end
  end

  describe '#power' do
    it 'should return the product of a numbers' do
      calc = Calculator.new
      product = calc.power(2,5)
      expect(product).to eq(32)
    end
  end

  describe '#cube' do
    it 'should return the product of a number' do
      calc = Calculator.new
      product = calc.cube(2)
      expect(product).to eq(8)
    end
  end

  describe '#remainder' do
    it 'should return the remainder of an operation' do
      calc = Calculator.new
      remainder = calc.remainder(9,2)
      expect(remainder).to eq(1)
    end
  end

  describe '#factorial' do
    it 'should return the product of a number' do
      calc = Calculator.new
      product = calc.factorial(5)
      expect(product).to eq(120)
    end
  end
end