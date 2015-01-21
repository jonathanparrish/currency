class DifferentCurrencyCodeError < StandardError

end

class Currency
  attr_reader :amount, :code

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(currency)
    if currency.amount == @amount && currency.code == @code
      return true
    else
      return false
    end
  end

  def +(currency)
    if code == currency.code
      currency_total = amount + currency.amount
    else
       raise DifferentCurrencyCodeError, "Sorry, you can't do that with +
       different currency codes!"
    end
  end

  def -(currency)
    if code == currency.code
      currency_total = amount - currency.amount
    else
      raise DifferentCurrencyCodeError, "Sorry, you can't do that with +
      different currency codes!"
    end
  end

#  def

#  end

end
