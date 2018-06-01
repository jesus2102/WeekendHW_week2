require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new(01)

    @song1 = Song.new("Vive la vida loca", "Ricky Martin")
    @song2 = Song.new("Bycicle", "Queens")

    @guest1 = Guest.new("Tony")
    @guest2 = Guest.new("Zsolt")
  end

  def test_guest_count
    assert_equal(0, @room.guest_count())
  end

  def test_check_in
    @room.check_in(@guest1)
    assert_equal(1, @room.guest_count())
  end

  def test_check_out
    @room.check_in(@guest1)
    @room.check_in(@guest2)
    @room.check_out(@guest1)
    assert_equal(1, @room.guest_count())
  end

  def test_song_count
    assert_equal(0, @room.playlist_count())
  end

  def test_add_song
    @room.add_song(@song1)
    assert_equal(1, @room.playlist_count())
  end

end
