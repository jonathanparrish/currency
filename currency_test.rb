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
  def test_01_currency_knows_its_ammount_and_currency_code
    currency = Currency.new(50, "EUR")
    assert_equal 50, currency.amount
    assert_equal "EUR", currency.code
  end

  def test_02_currency_equals_object_with_same_amt_and_code
    currency = Currency.new(50, "EUR")
    currency_2= Currency.new(50, "EUR")
    assert currency == currency_2
  end

  def test_03_able_to_add_to_another_currency_obj_with_same_code
    low_amount = Currency.new(50, "EUR")
    high_amount = Currency.new(100, "EUR")
    assert_equal 150, low_amount + high_amount
  end

  def test_03_able_to_subtract_from_another_currency_obj_with_same_code
    low_amount = Currency.new(50, "EUR")
    high_amount = Currency.new(100, "EUR")
    assert_equal 50, high_amount - low_amount 
  end


end
