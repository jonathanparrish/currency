class DifferentCurrencyCodeError < StandardError

end

class Currency
  attr_reader :amount, :code, :number

  def initialize(amount, code)
    @amount = amount
    @code = code
    @number = number
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

  def *(number)
    if
      amount = self.amount.to_i * number
      Currency.new(amount, self.code)
    else
      amount = self.amount.to_f * number
      Currency.new(amount, self.code)
    end
  end
end
