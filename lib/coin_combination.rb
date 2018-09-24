
NEW_LINE = "\n"

class Coins
  def initialize(input)
    @input = input
  end

  def coin_calculator
    coins = @input
    quarters = coins / 25
    coins -= 25 * quarters
    dimes = coins / 10
    coins -= 10 * dimes
    nickels = coins / 5
    coins -= 5 * nickels
    pennies = coins
    puts NEW_LINE + "#{quarters} q #{dimes} d #{nickels} n #{pennies} p" + NEW_LINE
    quarters.to_s + ' q ' + dimes.to_s + ' d ' + nickels.to_s + ' n ' + pennies.to_s + ' p'
  end
end
