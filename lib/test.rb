class Coins
  def convert change
    @change = (change * 100).to_i
  end
  def coin_calculator
      quarters = @change / 25
      @change -= 25 * quarters
      dimes = @change / 10
      @change -= 10 * dimes
      nickels = @change / 5
      @change -= 5 * nickels
      pennies = @change

      puts "#{quarters} q #{dimes} d #{nickels} n #{pennies} p"
  end
end

# test1 = Coins.new
#
# test1.convert(0.52)
# test1.coin_calculator
