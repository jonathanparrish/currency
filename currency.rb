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

end
