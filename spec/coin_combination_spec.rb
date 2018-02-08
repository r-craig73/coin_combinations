require('rspec')
require('pry')
require('coin_combination')

describe("#coin_calculator") do
  it("Takes in an amount of change and returns the amount in pennies") do
    coin = Coins.new()
    expect(coin.coin_calculator(0.04)).to(eq("0 q 0 d 0 n 4 p"))
  end
  it("Takes in an amount of change and returns the amount in nickels") do
    coin = Coins.new()
    expect(coin.coin_calculator(0.05)).to(eq("0 q 0 d 1 n 0 p"))
  end
  it("Takes in an amount of change and returns the amount in nickels and pennies") do
    coin = Coins.new()
    expect(coin.coin_calculator(0.07)).to(eq("0 q 0 d 1 n 2 p"))
  end
  it("Takes in an amount of change and returns the amount in pennies, nickels, and dimes") do
    coin = Coins.new()
    expect(coin.coin_calculator(0.17)).to(eq("0 q 1 d 1 n 2 p"))
  end
  it("Takes in an amount of change and returns the amount in pennies, nickels, dimes, and quarters") do
    coin = Coins.new()
    expect(coin.coin_calculator(0.42)).to(eq("1 q 1 d 1 n 2 p"))
  end

end
