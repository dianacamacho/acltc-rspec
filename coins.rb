require 'rspec'

class Coins
  def change(cents)
    coin_values = [25,10,5,1] 
    change = []
    
    coin_values.each do |coin_value|
      number_of_coins = cents / coin_value
      
      number_of_coins.times do
        change << coin_value
        cents -= coin_value
      end
    end

    change
  end
end

  
RSpec.describe Coins do
  describe '#change' do 
    it 'should return [25] number of coins' do
      coins = Coins.new
      expect(coins.change(25)).to eq([25])
    end

    it 'should return [10] number of coins' do
      coins = Coins.new
      expect(coins.change(10)).to eq([10])
    end

    it 'should return [5] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(5)).to eq([5])
    end

    it 'should return [1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(1)).to eq([1])
    end

    it 'should return [25,10] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(35)).to eq([25,10])
    end

    it 'should return [10,5] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(15)).to eq([10,5])
    end

    it 'should return [10,1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(11)).to eq([10,1])
    end

    it 'should return [10,5,1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(16)).to eq([10,5,1])
    end

    it 'should return [25, 25] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(50)).to eq([25,25])
    end

    it 'should return [25, 1, 1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(27)).to eq([25,1,1])
    end

    it 'should return [25, 10, 1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(36)).to eq([25,10,1])
    end

    it 'should return [5, 1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(6)).to eq([5,1])
    end

    it 'should return [1, 1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(2)).to eq([1,1])
    end

    it 'should return [25, 10, 5, 1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(41)).to eq([25,10,5,1])
    end

    it 'should return [25,25,25,25,10,5,1,1,1,1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(119)).to eq([25,25,25,25,10,5,1,1,1,1])
    end

    it 'should return [25,25,25,1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(76)).to eq([25,25,25,1])
    end

    it 'should return [10,10,1,1,1] fewest number of coins' do
      coins = Coins.new
      expect(coins.change(23)).to eq([10,10,1,1,1])
    end
  end
end
