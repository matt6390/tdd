require 'rspec'

class Roman
  def change(numbers)
    answer = ""
    while numbers > 0
      answer = "I" * numbers
      numbers -= 1 * numbers
    end
    answer
  end
end





RSpec.describe Roman do 

  let(:roman) {Roman.new}

  describe "#change" do 
    it "should return an amount of I's equal to the number provided" do
      numerals = rand(1..3)
      new_num = numerals
      answer = ""

      while numerals > 0
        answer = "I" * numerals
        numerals -= 1 * numerals
      end
      expect(roman.change(new_num)).to eq(answer)
    end
  end
end