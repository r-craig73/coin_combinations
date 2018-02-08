require('rspec')
require('pry')
require('coin_combination')

describe("#coin_calculator") do
  it("Takes in an amount of change and returns the amount in pennies") do
    coin = Coins.new()
    expect(coin.coin_calculator(0.20)).to(eq("20 pennies"))
  end

end
