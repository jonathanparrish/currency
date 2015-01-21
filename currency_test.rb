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

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './currency'
require './different_currency_code_error'
require './currency_converter'


class CurrencyTest< Minitest::Test

  def self.test_order
    :alpha
  end

  def test_00_currency_class_exists
    assert Currency
  end

  def test_01_currency_knows_its_ammount_and_currency_code
    currency = Currency.new(50, :EUR)
    assert_equal 50, currency.amount
    assert_equal :EUR, currency.code
  end

  def test_02_currency_equals_object_with_same_amt_and_code
    currency = Currency.new(50, :EUR)
    currency_2 = Currency.new(50, :EUR)
    currency_3 = Currency.new(75, :EUR)
    refute currency == currency_3
    assert currency == currency_2
  end

  def test_03_able_to_add_to_another_currency_obj_with_same_code
    low_amount = Currency.new(50, :EUR)
    high_amount = Currency.new(100, :EUR)
    assert_equal 150, low_amount + high_amount
  end

  def test_04_able_to_subtract_from_another_currency_obj_with_same_code
    low_amount = Currency.new(50, :EUR)
    high_amount = Currency.new(100, :EUR)
    assert_equal 50, high_amount - low_amount
  end

  def test_05_cant_add_or_sutract_with_two_different_currency_codes
    currency_1 = Currency.new(50, :BRL)
    currency_2 = Currency.new(50, :EUR)
    assert_raises(DifferentCurrencyCodeError) do
      currency_1 + currency_2
    end
    assert_raises(DifferentCurrencyCodeError) do
      currency_1 - currency_2
    end
  end

  def test_06_can_be_multiplied_by_fixnum
    currency_1 = Currency.new(5, :EUR)
    assert_equal Currency.new(25, :EUR), (currency_1 * 5)
    refute Currency.new(25, :EUR) == (currency_1 * 6)
    assert_equal Fixnum,(currency_1 * 5).amount.class
  end

  def test_07_can_be_multiplied_by_float
    currency_1 = Currency.new(5, :EUR)
    assert_equal Currency.new(7.5, :EUR), currency_1 * 1.5
    refute Currency.new(7, :EUR) == currency_1 * 1.5
    assert_equal Float,(currency_1 * 1.5).amount.class
  end

  def test_08_currency_converter_class_exists
    assert CurrencyConverter
  end

  def test_09_create_currency_code_with_hash
    currency_codes = CurrencyConverter.new({USD: 1.0 , EUR: 0.8})
    assert currency_codes
  end
# Should be able to take a Currency object and a requested currency code that +
#is the same currency code as the Currency object's and return a Currency +
#object equal to the one passed in

  def test_10_take_currency_object_with_same_code_and_return_currency_equal
    currency_converter = CurrencyConverter.new({USD: 1.0, EUR: 0.8})
    currency = Currency.new(3, :USD)
    assert currency_converter.convert(currency, :USD) == Currency.new(3, :USD)
  end

end

















#currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
