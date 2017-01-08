require 'rspec'

class Coins
  def change(value)
    change = []

    if value / 25 > 0
      quarters = value / 25
      quarters.times do 
        change << 25
      end
      
      value = value % 25

      if value > 0
        dimes = value / 10
        dimes.times do
          change << 10
        end
        value = value % 10 
      end

      if value > 0
        nickles = value / 5
        nickles.times do 
          change << 5
        end
        value = value % 5
      end
      
      if value > 0
        pennies = value / 1
        pennies.times do 
          change << 1
        end
      end 

    elsif value / 10 > 0
      dimes = value / 10
      dimes.times do
        change << 10
      end

      value = value % 10

      if value / 5 > 0
        nickles = value / 5
        nickles.times do 
          change << 5
        end
        
        value = value % 5
        
        if value / 1 > 0
          pennies = value / 1
          pennies.times do
            change << 1
          end
        end 
      elsif value / 1 > 0
        pennies = value / 1
        pennies.times do 
          change << 1
        end
      end

    elsif value / 5 > 0
      nickles = value / 5
      nickles.times do
        change << 5
      end
      
      value = value % 5
      
      if value / 1 > 0
        pennies = value / 1
        pennies.times do 
          change << 1
        end
      end

    elsif value / 1 > 0
      pennies = value / 1
      pennies.times do
        change << 1
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
