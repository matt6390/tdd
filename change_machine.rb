require 'rspec'

class ChangeMachine
  def change(numbers)
    cents = []
    cents += [25] * (numbers / 25)
    cents += [10] * ((numbers % 25) / 10)
    cents += [5] * ((((numbers % 25) % 10)) / 5)
    cents += [1] * (((((numbers % 25) % 10)) % 5) / 1)
    
    return cents
  end


  # def change(number)
  #   cents =[]
  #   while number > 0
  #     if number >= 25
  #       cents << 25
  #       number -= 25
  #     elsif number >= 10
  #       cents << 10 
  #       number -= 10
  #     elsif number >= 5
  #       cents << 5 
  #       number -= 5
  #     elsif number > 0
  #       cents << 1
  #       number -= 1  
  #     end
  #   end
  #   cents
  # end
end


p ChangeMachine.new.change(200)




RSpec.describe ChangeMachine do
  describe '#change' do
    let(:change_machine) { ChangeMachine.new}

    it 'should return an array of pennies if greater than 0 and less than 5' do 
      number = rand(1..4)
      cents = []

      number.times do 
        cents << 1
      end
      expect(change_machine.change(number)).to match_array(cents)
    end
      
    it 'should return an array of nickels and pennies when greater than 5, but less than 10' do 
      number = rand(5..9)
      new_number = number
      cents = []

      while number >= 5
        cents << 5 
        number -= 5
      end

      while number > 0
        cents << 1
        number -= 1
      end

      expect(change_machine.change(new_number)).to match_array(cents)
    end

    it 'should return an array of pennies, nickels, and dimes if amount is greater than 9 but less than 25' do
      number = rand(10..24)
      new_number = number 
      cents = []

      while number >= 10
        cents << 10
        number -= 10
      end
      while number >= 5
        cents << 5
        number -= 5
      end
      while number > 0
        cents << 1
        number -= 1
      end
      expect(change_machine.change(new_number)).to match_array(cents)
    end

    it 'should return an array of pennies, nickles, dimes, and quarters if amount 25 cents or greater' do 

      number = rand(25..300)
      new_number = number 
      cents = []

      while number >= 25
        cents << 25
        number -= 25
      end
      while number >= 10
        cents << 10
        number -= 10
      end
      while number >= 5
        cents << 5
        number -= 5
      end
      while number > 0
        cents << 1
        number -= 1
      end
      expect(change_machine.change(new_number)).to match_array(cents)
    end

  end
end









