require './currency'
class CurrencyConverter

  attr_accessor :c_codes

  def initialize (c_codes)
    @c_codes = c_codes
  end

 def convert(new_amt, new_code)
   if new_amt.code == new_code
     return new_amt
   else
     new_amt = new_amt.amount * c_codes[new_code] / c_codes[new_amt.code]
     return Currency.new(new_amt, new_code)
   end
 end
end
