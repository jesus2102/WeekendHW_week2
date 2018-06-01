require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Mary", 40)
    @guest2 = Guest.new("Jonny", 25)

    @room = Room.new(01, 12, 10, 500)
  end

  def test_pay_fee
    @guest1.pay_fee(@room)
    assert_equal(30, @guest1.wallet())
  end


end
