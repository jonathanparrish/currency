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

end
