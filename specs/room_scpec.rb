require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
require_relative("../room.rb")

class RoomTest < MiniTest::test

  def setup
    @room = Room.new(01)
  end




end
