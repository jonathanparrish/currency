require './currency'
class CurrencyConverter

  attr_accessor :c_codes

  def initialize (c_codes)
    @c_codes = c_codes
  end

 def convert(new_amt, new_code)
   if new_amt.code == new_code
     return new_amt
   end
 end
end
