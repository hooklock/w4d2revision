require('minitest/autorun')
require_relative('../models/shoe')

class TestShoe <MiniTest::Test

  def setup
    options = {
      "first_name" => "Adam",
      "last_name" => "Pinner",
      "address" => "Glasgow",
      "size" => "10",
      "quantity" => 2
    }
    @shoe = Shoe.new(options)
  end

  def test_first_name
    assert_equal("Adam", @shoe.first_name())
  end

  def test_last_name
    assert_equal("Pinner", @shoe.last_name())
  end

  def test_pretty_name
    assert_equal("Adam Pinner", @shoe.pretty_name)
  end

  def test_address
    assert_equal("Glasgow", @shoe.address)
  end

  def test_size
    assert_equal("10", @shoe.size)
  end

  def test_quantity
    assert_equal(Fixnum, @shoe.quantity.class)
    assert_equal(2, @shoe.quantity)
  end

end