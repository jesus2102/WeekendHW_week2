require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup

    @song1 = Song.new("Vive la vida loca", "Ricky Martin")
    @song2 = Song.new("Bycicle", "Queens")

    @guest1 = Guest.new("Mary", 40, @song1)
    @guest2 = Guest.new("Jonny", 25, @song2)

    @room = Room.new(01, 12, 10, 500)
  end

  def test_pay_fee
    @guest1.pay_fee(@room)
    assert_equal(30, @guest1.wallet())
  end

  def test_fav_song
    assert_equal("Whooo", @guest1.fav_song(@song1))
  end


end
