class Coins
  def convert change
    (change * 100).to_i
  end

  def coin_calculator change
    money = convert(change)
    quarters = money / 25
    money -= 25 * quarters
    dimes = money / 10
    money -= 10 * dimes
    nickels = money / 5
    money -= 5 * nickels
    pennies = money

    "#{quarters} q #{dimes} d #{nickels} n #{pennies} p"

  end
end
