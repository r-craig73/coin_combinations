require('rspec')
require('pry')
require('coin_combination')

describe('coin_calculator') do
  it('returns the amount in pennies') do
    coin = Coins.new(4)
    expect(coin.coin_calculator).to(eq('0 q 0 d 0 n 4 p'))
  end

  it('returns the amount in nickels') do
    coin = Coins.new(5)
    expect(coin.coin_calculator).to(eq('0 q 0 d 1 n 0 p'))
  end

  it('returns the amount in nickels and pennies') do
    coin = Coins.new(7)
    expect(coin.coin_calculator).to(eq('0 q 0 d 1 n 2 p'))
  end

  it('returns the amount in pennies, nickels, and dimes') do
    coin = Coins.new(17)
    expect(coin.coin_calculator).to(eq('0 q 1 d 1 n 2 p'))
  end

  it('returns the amount in pennies, nickels, dimes, and quarters') do
    coin = Coins.new(42)
    expect(coin.coin_calculator).to(eq('1 q 1 d 1 n 2 p'))
  end
end
