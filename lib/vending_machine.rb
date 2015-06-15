class VendingMachine

  VALID_COINS = ['5', '10', '25']

  attr_reader :display, :coin_return

  def initialize
    self.display = 'INSERT COIN'
    self.coins = []
  end

  def insert(coin)
    if VALID_COINS.include? coin
      @coins.push(coin)
      self.display = "#{@coins.inject{|sum, x| sum.to_i + x.to_i}} cents"
    else
      self.coin_return = coin
    end
  end

  private

  attr_accessor :coins
  attr_writer :display, :coin_return

end