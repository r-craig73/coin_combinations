# class Coins and coin_combination method to return change
class Coins
  def initialize(input)
    @input = input
  end

  def coin_calculator
    change = @input.to_i
    quarters = change / 25
    change -= 25 * quarters
    dimes = change / 10
    change -= 10 * dimes
    nickels = change / 5
    change -= 5 * nickels
    pennies = change
    quarters.to_s + ' q ' + dimes.to_s + ' d ' + nickels.to_s + ' n ' + pennies.to_s + ' p'
  end

  puts 'Please input the amount of change, in cents:'
  @input = gets.chomp
  money = Coins.new(@input)
  items = money.coin_calculator
  puts "Here's your change: " + items.to_s
end
