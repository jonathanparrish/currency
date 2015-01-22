
class CurrencyConverter

  attr_accessor :currency_codes

  def initialize (currency_codes)
    @currency_codes = currency_codes
  end

 def convert(currency, new_code)

   if currency.code == new_code
     return currency


     #borrowed this code to try to figure ou how to follow their logic.
     #I failed :)


   elsif
     currency.amount > currency_codes[new_code]
     new_amt = currency.amount * currency_codes[new_code]
     return Currency.new(new_amt, new_code)
   else
     currency.amount < currency_codes[new_code]
     new_amt = currency.amount * currency_codes[new_code] / currency_codes[currency.code]
     return Currency.new(new_amt, new_code)
   end
 end
end
