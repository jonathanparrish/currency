# Currency
# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount +
#  and currency code
# Should be able to be added to another Currency object +
# with the same currency code
# Should be able to be subtracted by another Currency +
# object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to +
# add or subtract + two Currency objects with different +
#  currency codes.
# Should be able to be multiplied by a Fixnum or Float +
#  and return + a Currency object
#


require 'minitest/autorun'
require 'minitest/pride'
require './currency'

class CurrencyTest< Minitest::Test

  def self.test_order
    :alpha
  end

  def test_00_currency_class_exists
    assert Currency
  end
  #Should be created with an amount and a currency code
  def test_01_currency_knows_its_ammount
      currency = Currency.new(23)
      assert_equal 23, currency.amount
  end
end
